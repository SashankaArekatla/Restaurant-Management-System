<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>United Telugu Kitchen | Sashanka</title>
        <script src="https://kit.fontawesome.com/7a4b62b0a4.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="aboutstyle.css?v=1">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.10.2/css/v4-shims.css">
        <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.4.2/css/all.css">
        <script src="timer.js"></script>
    </head>

    <body>
        <nav>
            <div class="navigation container">
                <div class="logo_container">
                    <a href="index.jsp"><img src="images/logo.png" alt="logo" /></a>
                </div>

                <!-- Hamburger Menu Icon -->
                <div class="menu-toggle" id="menu-toggle">
                    <i class="fa-regular fa-bars"></i>
                </div>

                <section class="ggs" id="nav-links">
                    <div class="gg">
                        <ul>
                            <a href="index.jsp" class="underline-on-hover">
                                <h2>Home</h2>
                            </a>
                        </ul>
                    </div>
                    <% if (session.getAttribute("loggedInUser") !=null) { %>
                        <div class="gg">
                            <ul>
                                <a href="about.jsp" class="underline-on-hover">
                                    <h2>Who we are</h2>
                                </a>
                            </ul>
                        </div>
                        <div class="gg">
                            <ul>
                                <a href="menu.jsp" class="underline-on-hover">
                                    <h2>Menu</h2>
                                </a>
                            </ul>
                        </div>
                        <div class="gg">
                            <ul>
                                <a href="contact.jsp" class="underline-on-hover">
                                    <h2>Contact Us</h2>
                                </a>
                            </ul>
                        </div>
                        <% } %>

                            <% if (session.getAttribute("loggedInUser") !=null) { %>
                                <div class="gg">
                                    <ul>
                                        <!-- Display user greeting with dropdown for logout -->
                                        <div class="user_greeting">
                                            <a>
                                                <h2>Hello, <%= session.getAttribute("loggedInUser") %>
                                                </h2>
                                            </a>
                                            <div class="dropdown_content">
                                                <div class="dropdown_indicator"></div>
                                                <div class="dropdown_indicator_line"></div>
                                                <a href="menu2.jsp">Menu</a>
                                                <a href="logout.jsp">Logout</a>
                                            </div>
                                        </div>
                                    </ul>
                                </div>
                                <% } else { %>
                                    <div class="gg">
                                        <ul>
                                            <!-- Show sign-in link only if not logged in -->
                                            <a href="log.html" class="underline-on-hover">
                                                <h2>Sign in</h2>
                                            </a>
                                        </ul>
                                    </div>
                                    <% } %>
                </section>
                <% if (session.getAttribute("loggedInUser") !=null) { %>
                    <div class="gg">
                        <a>
                            <span id="cart"><i class="fa-regular fa-cart-shopping"></i></span>
                            <div id="badge"> 0 </div>
                        </a>
                    </div>
                    <div class="gg">
                        <span id="session-timer">Session <i class="fa-regular fa-hourglass"></i> : <br>
                            <span class="time-part" id="minutes">00</span> m :
                            <span class="time-part" id="seconds">00</span> s
                        </span>
                    </div>
                    <% } %>
            </div>
        </nav>

        <div class="aboutof">
            <img src="images/about.png" alt="bg" />
            <h1 class="our-story">Our story</h1>
        </div>

        <div class="container">
            <div class="ourstoryimg">
                <img src="images/line.png" alt="line" />
            </div>
            <div class="ourstory-text">
                <div>United Telugu Kitchen was born from the urge to ensure our traditions are plated to everyone on a
                </div>
                <div>silver platter. The restaurant offers delectable cuisines that are local, authentic and prepared
                </div>
                <div>with love. These are dishes that we’ve grown up on, loved and cherished. It’s like tasting </div>
                <div>nostalgia, in a way.</div><br>

                <div>The farms, the farmers, the folk and the folklore. United Telugu Kitchen celebrates it all — trying
                </div>
                <div>to connect the heart to our heartland, and our motherland.</div><br>

                <div>A curated menu with local dishes that are crafted with love, care and passion are prepared for
                </div>
                <div>you to indulge like you never have.</div><br>

                <div>Set against the urban and ever-growing backdrop of Vijayawada, United Telugu Kitchen is here</div>
                <div>to amplify the local taste on a modern scale.</div><br>
            </div>

            <div class="fresh-menus">
                <div class="menu-item">
                    <img src="icons/about1.png" alt="Menu Icon">
                    <h3>Daily Fresh Menus</h3>
                    <p>United Telugu Kitchen help you treat yourself with<br> a different meal everyday, thanks to our
                        menus<br> and our awesome creative chefs!</p>
                </div>
                <div class="menu-item">
                    <img src="icons/about2.png" alt="Ingredient Icon">
                    <h3>Fresh Ingredients</h3>
                    <p>When cooking with fresh ingredients, your food<br> can retain a lot more nutrients compared
                        to<br> processed foods.</p>
                </div>
                <div class="menu-item">
                    <img src="icons/about3.png" alt="Recipe Icon">
                    <h3>Tasty Meals</h3>
                    <p>United Telugu Kitchen's creative chefs use fresh<br> and seasonal ingredients to make affordable,
                        tasty<br> and nourishing meals.</p>
                </div>
            </div>
        </div>

        <div class="scroll-container" id="scroll-container">
            <img src="scroll images/1.jpg" alt="Dish Image 1">
            <img src="scroll images/2.jpg" alt="Dish Image 2">
            <img src="scroll images/3.jpg" alt="Dish Image 3">
            <img src="scroll images/4.jpg" alt="Dish Image 4">
            <img src="scroll images/5.jpg" alt="Dish Image 5">
            <img src="scroll images/6.jpg" alt="Dish Image 6">
            <img src="scroll images/7.jpg" alt="Dish Image 7">
            <img src="scroll images/8.jpg" alt="Dish Image 8">
            <img src="scroll images/9.jpg" alt="Dish Image 9">
            <img src="scroll images/10.jpg" alt="Dish Image 10">
            <img src="scroll images/11.jpg" alt="Dish Image 11">
            <img src="scroll images/12.jpg" alt="Dish Image 12">
        </div>

        <footer>
            <div class="footer_container container">
                <div class="footer_logo">
                    <img src="images/logo2.png" alt="logo" class="footer_logo_img" />
                </div>
                <div class="link_lists">
                    <h3>Contact</h3>
                    <ul>
                        <li><a href="contact.jsp" style="color: white;">Contact Us</a></li>
                        <li>News & Blogs</li>
                    </ul>
                </div>
                <div class="link_lists">
                    <h3>Support</h3>
                    <ul>
                        <li><a href="about.jsp" style="color: white;">About Us</a></li>
                        <li>Privacy Policy</li>
                        <li>Terms & Conditons</li>
                    </ul>
                </div>
                <div class="news_letter">
                    <h3>LET'S CONNECT</h3>
                    <div class="icon_container">
                        <div class="icon">
                            <a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a>
                        </div>
                        <div class="icon">
                            <a href="https://x.com/?lang=en"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                        </div>
                        <div class="icon">
                            <a href="https://www.instagram.com/"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                        </div>
                        <div class="icon">
                            <a href="https://www.youtube.com/"><i class="fa fa-youtube" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

        <script>
            document.addEventListener('DOMContentLoaded', function () {
                const scrollContainer = document.getElementById('scroll-container');
                const imageWidth = 500;
                const scrollPause = 4000;
                let scrollIndex = 0;
                const maxScrollIndex = scrollContainer.children.length - 1;

                function autoScroll() {
                    const scrollLeft = scrollIndex * imageWidth;
                    scrollContainer.scrollTo({
                        left: scrollLeft,
                        behavior: 'smooth'
                    });
                    scrollIndex = (scrollIndex + 1) % (maxScrollIndex + 1);
                    setTimeout(autoScroll, scrollPause);
                }

                autoScroll();
            });
        </script>
        <!-- back to top button-->
        <button id="back-to-top-btn" onclick="smoothScrollBackToTop()">
            <i class="fa-regular fa-arrow-up"></i>
        </button>
        <script>
            const backToTopButton = document.querySelector("#back-to-top-btn");

            window.addEventListener("scroll", scrollFunction);

            function scrollFunction() {
                if (window.pageYOffset > 300) {
                    if (!backToTopButton.classList.contains("btnEntrance")) {
                        backToTopButton.classList.remove("btnExit");
                        backToTopButton.classList.add("btnEntrance");
                        backToTopButton.style.display = "flex";
                        backToTopButton.style.opacity = "1";
                    }
                } else {
                    if (backToTopButton.classList.contains("btnEntrance")) {
                        backToTopButton.classList.remove("btnEntrance");
                        backToTopButton.classList.add("btnExit");
                        backToTopButton.style.opacity = "0";
                        setTimeout(function () {
                            backToTopButton.style.display = "none";
                        }, 250);
                    }
                }
            }

            function smoothScrollBackToTop() {
                const targetPosition = 0;
                const startPosition = window.pageYOffset;
                const distance = targetPosition - startPosition;
                const duration = 750;
                let start = null;

                window.requestAnimationFrame(step);

                function step(timestamp) {
                    if (!start) start = timestamp;
                    const progress = timestamp - start;
                    window.scrollTo(
                        0,
                        easeInOutCubic(progress, startPosition, distance, duration)
                    );
                    if (progress < duration) window.requestAnimationFrame(step);
                }
            }

            function easeInOutCubic(t, b, c, d) {
                t /= d / 2;
                if (t < 1) return (c / 2) * t * t * t + b;
                t -= 2;
                return (c / 2) * (t * t * t + 2) + b;
            }
        </script>
        <!-- back to top button end-->
        <!-- back button-->
        <button id="backButton">
            <i class="fa-regular fa-arrow-left"></i>
        </button>
        <script>
            function addPageToHistory() {
                const currentPage = window.location.href;
                let history = JSON.parse(localStorage.getItem('pageHistory')) || [];

                if (history.length === 0 || history[history.length - 1] !== currentPage) {
                    history.push(currentPage);
                    localStorage.setItem('pageHistory', JSON.stringify(history));
                }
            }

            function goBack() {
                let history = JSON.parse(localStorage.getItem('pageHistory')) || [];

                history.pop();

                const previousPage = history.pop() || 'index.jsp';

                localStorage.setItem('pageHistory', JSON.stringify(history));

                window.location.href = previousPage;
            }

            window.onload = addPageToHistory;

            window.addEventListener('popstate', addPageToHistory);

            document.getElementById('backButton').addEventListener('click', goBack);

            document.querySelectorAll('a').forEach(link => {
                link.addEventListener('click', () => {
                    addPageToHistory();
                });
            });
        </script>
        <!-- back button end-->
        <button id="homeButton" onclick="location.href='index.jsp'">
            <i class="fa-regular fa-house"></i>
        </button>

        <script>
            document.addEventListener('DOMContentLoaded', () => {
                const menuToggle = document.getElementById('menu-toggle');
                const navLinks = document.getElementById('nav-links');

                menuToggle.addEventListener('click', () => {
                    navLinks.classList.toggle('active');
                    menuToggle.classList.toggle('active');
                });
            });

        </script>

    </body>

    </html>