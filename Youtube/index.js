var setadireita = window.document.getElementById("setadireita")
var Leonardo = window.document.getElementById("Leonardo")
var Bruna = window.document.getElementById("Bruna")
var Samanta = window.document.getElementById("Samanta")
var setaesquerda = window.document.getElementById("setaesquerda")

function DeslizarParaDireita() {
    Leonardo.style = "display:none"
    Bruna.style = "display:flex"
    Samanta.style = "display:flex"
    setadireita.style = "display:none"
    setaesquerda.style = "display:flex; margin-top=50px"
}
function DeslizarParaEsquerda() {
    Leonardo.style = "display:flex"
    Bruna.style = "display:none"
    setadireita.style = "display:flex; margin-top=50px"
    setaesquerda.style = "display:none"
}
