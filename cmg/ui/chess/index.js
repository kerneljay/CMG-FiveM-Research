var game;
var chessboard;
var playingSide;
var bPlayingActive;

function onDragStart(source, piece, position, orientation) {
    if (!bPlayingActive || game.turn() !== playingSide) {
        return false
    }

    if (game.game_over()) {
        return false
    }

    if ((game.turn() === "w" && piece.search(/^b/) !== -1) || (game.turn() === "b" && piece.search(/^w/) !== -1)) {
        return false
    }
}

function onDrop(source, target, piece, newPosition, oldPosition, orientation) {
    removeGreySquares()

    var move = game.move({
        from: source,
        to: target,
        promotion: "q"
    })

    if (move === null) {
        return "snapback"
    }
}

function removeGreySquares() {
    $("#chess-board .square-55d63").css("background", "")
}

function greySquare (square) {
    var $square = $("#chess-board .square-" + square)

    var background = "#a9a9a9"
    if ($square.hasClass("black-3c85d")) {
        background = "#696969"
    }

    $square.css("background", background)
}

function onMouseoverSquare(square, piece) {
    if (!bPlayingActive || game.turn() !== playingSide) {
        return
    }

    var moves = game.moves({
        square: square,
        verbose: true
    })

    if (moves.length === 0) {
        return
    }

    greySquare(square)

    for (var i = 0; i < moves.length; i++) {
        greySquare(moves[i].to)
    }
}

function onMouseoutSquare(square, piece) {
    removeGreySquares()
    checkBoardColours()
}

function onSnapEnd() {
    const fen = game.fen()
    chessboard.position(fen)
    fetch("http://cmg/chessUpdatedFEN", {
        method: "POST",
        body: JSON.stringify({
            fen: fen,
            isGameOver: game.game_over(),
            isStalemate: game.in_stalemate(),
            isCheckmate: game.in_checkmate()
        })
    });
}

function checkBoardColours() {
    const inCheck = game.in_check()
    for (var letterCode = 97; letterCode <= 104; letterCode++) {
        const letter = String.fromCharCode(letterCode)
        for (var i = 1; i <= 8; i++) {
            const squareId = letter + i.toString()
            const squareJs = $("#chess-board .square-" + squareId)
            const pieceData = game.get(squareId)
            if (pieceData) {
                if (inCheck && pieceData.color === game.turn() && pieceData.type === "k") {
                    squareJs.css("background", "#ff1947")
                    continue
                }
            }
            squareJs.css("background", "")
        }
    }
}

$(document).ready(function() {
    game = new Chess()
    chessboard = Chessboard("chess-board", {
        draggable: true,
        position: "start",
        onDragStart: onDragStart,
        onDrop: onDrop,
        onMouseoutSquare: onMouseoutSquare,
        onMouseoverSquare: onMouseoverSquare,
        onSnapEnd: onSnapEnd
    })
    $("#chess-board").hide()

    window.addEventListener("message", function(event) {
        if (event.data.displayChessBoard) {
            if (event.data.visible) {
                playingSide = event.data.playingSide
                bPlayingActive = event.data.playingActive
                if (playingSide === "w") {
                    chessboard.orientation("white")
                } else {
                    chessboard.orientation("black")
                }
                $("#chess-board").fadeIn()
            } else {
                $("#chess-board").fadeOut()
            }
        } else if (event.data.updateChessBoard) {
            game.load(event.data.fen)
            chessboard.position(event.data.fen)
            checkBoardColours()
            if (game.in_check()) {
                fetch("http://cmg/chessPlayCheckSound", {
                    method: "POST",
                    body: JSON.stringify({})
                });
            }
        }
    })
})