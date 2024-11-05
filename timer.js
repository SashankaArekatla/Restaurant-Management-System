let timer;
        let sessionDuration = 300; //secs in mins

        function startSessionTimer() {
            let endTime = Date.now() + sessionDuration * 1000;

            function timerFunction() {
                let diff = Math.floor((endTime - Date.now()) / 1000) + 1;
                if (diff <= 0) {
                    clearInterval(timer);
                    logoutUser();
                } else {
                    displaySessionTimer(diff);
                }
            }

            timer = setInterval(timerFunction, 1000);
        }

        function resetSessionTimer() {
            clearInterval(timer);
            startSessionTimer();
        }

        function displaySessionTimer(seconds) {
            let minutes = Math.floor(seconds / 60);
            let remainderSeconds = seconds % 60;
            document.getElementById('minutes').textContent = minutes < 10 ? '0' + minutes : minutes;
            document.getElementById('seconds').textContent = remainderSeconds < 10 ? '0' + remainderSeconds : remainderSeconds;
        }

        function logoutUser() {
            clearInterval(timer);
            window.location.href = 'logout.jsp';
        }

        document.addEventListener('DOMContentLoaded', function () {
            if (document.getElementById('session-timer')) {
                startSessionTimer();
            }
        });

        document.addEventListener('mousemove', function () {
            if (document.getElementById('session-timer')) {
                resetSessionTimer();
            }
        });

        document.addEventListener('keydown', function () {
            if (document.getElementById('session-timer')) {
                resetSessionTimer();
            }
        });