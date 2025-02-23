window.addEventListener('message', function(event) {
    let data = event.data;
    if (data.action === "updateAOP") {
        document.getElementById("aop").textContent = "AOP: " + data.aop;
    } else if (data.action === "updatePeacetime") {
        let peacetimeElement = document.getElementById("peacetime");
        peacetimeElement.textContent = "Peacetime: " + (data.peacetime ? "ENABLED" : "DISABLED");
        peacetimeElement.className = "peacetime " + (data.peacetime ? "enabled" : "disabled");
    }
});
