window.onload = function() {
    let code = document.getElementsByClassName("text")[0]

    window.addEventListener("message", (e) => {
        let {data} = e;

        switch (data.action) {
            case "update":
                code.innerText = data.code
                break
          
        }
    })
}