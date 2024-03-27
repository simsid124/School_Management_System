<% String cookieName = "uname1";
String cookieName2 = "adminname";
Cookie cookies[] = request.getCookies();
Cookie myCookie = null;
boolean user = false, admin=false;
if (cookies != null){
    for (int i = 0; i < cookies.length; i++)
    {
        if (cookies [i].getName().equals (cookieName))
        {
            myCookie = cookies[i];
            session.setAttribute("name", myCookie.getValue());
            user=true;
        }
        else if(cookies[i].getName().equals("emailid"))
         {
                session.setAttribute("emailid", cookies[i].getValue());
                user=true;
                
        }          
        else if (cookies [i].getName().equals (cookieName2))
        {
            myCookie = cookies[i];
            session.setAttribute("adminname", myCookie.getValue());
            admin=true;            
        }         
    }
   }
   if(user==true)
   {
    response.sendRedirect("welcome.jsp");
    }
    else if(admin==true)
    {
        response.sendRedirect("adminpanel.jsp");
    }


%>    
    
    


<!-- header -->
    <header id="site-header" class="fixed-top">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light">
                <a class="navbar-brand active" aria-current="page"  href="index.jsp"><i class="fas fa-graduation-cap"></i>Edu School
                </a>
                <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
                    <span class="navbar-toggler-icon fa icon-close fa-times"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarScroll">
                    <ul class="navbar-nav ms-auto my-2 my-lg-0 navbar-nav-scroll">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                        </li>
                        <%
                        if(session.getAttribute("name")== null)
                        {
                        %>
                        
                        <li class="nav-item">
                         <a class="nav-link active" aria-current="page" href="signup.jsp">Signup</a>
                        </li> 
                        <li class="nav-item">
                           <a class="nav-link active" aria-current="page" href="login.jsp">login</a>
                        </li>
                        <%
                            }
else{
%>
<li class="nav-item">
                              <a class="nav-link active" aria-current="page" href="logout.jsp">logout</a>
                        </li>
                        <%
                            }
%>
                        <li class="nav-item">
                             <a class="nav-link active" aria-current="page" href="courses.jsp">Courses</a>
                        </li>
               <li class="nav-item">
                             <a class="nav-link active" aria-current="page" href="contact.jsp">Contact us</a>
                        </li>
                    </ul>
                    <!-- search-right -->
                    <div class="header-search position-relative">
                        <div class="search-right mx-lg-2">
                            <a href="#search" class="btn search-btn p-0" title="search">
                                <i class="fas fa-search"></i></a>
                            <!-- search popup -->
                            <div id="search" class="pop-overlay">
                                <div class="popup">
                                    <form action="#search" method="GET" class="search-box">
                                        <input type="search" placeholder="Enter Keyword..." name="search"
                                            required="required" autofocus="">
                                        <button type="submit" class="btn"><span class="fas fa-search"
                                               aria-current="page"></span></button>
                                    </form>
                                </div>
                                <a class="close" href="#close">?</a>
                            </div>
                            <!-- //search popup -->
                        </div>
                    </div>
                    <!--//search-right-->
                </div>
                <!-- toggle switch for light and dark theme -->
                <div class="cont-ser-position">
                    <nav class="navigation">
                        <div class="theme-switch-wrapper">
                            <label class="theme-switch" for="checkbox">
                                <input type="checkbox" id="checkbox">
                                <div class="mode-container">
                                    <i class="gg-sun"></i>
                                    <i class="gg-moon"></i>
                                </div>
                            </label>
                        </div>
                    </nav>
                </div>
                <!-- //toggle switch for light and dark theme -->
            </nav>
        </div>
    </header>
    <!-- //header -->
     <!-- Js scripts -->
    <!-- move top -->
    <button onclick="topFunction()" id="movetop" title="Go to top">
        <span class="fas fa-level-up-alt" aria-hidden="true"></span>
    </button>
    <script>
        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function () {
            scrollFunction()
        };

        function scrollFunction() {
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                document.getElementById("movetop").style.display = "block";
            } else {
                document.getElementById("movetop").style.display = "none";
            }
        }

        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
        }
    </script>
    <!-- //move top -->

    <!-- common jquery plugin -->
    <script src="assets/js/jquery-3.3.1.min.js"></script>
    <!-- //common jquery plugin -->

    <!-- /counter-->
    <script src="assets/js/counter.js"></script>
    <!-- //counter-->

    <!-- theme switch js (light and dark)-->
    <script src="assets/js/theme-change.js"></script>
    <!-- //theme switch js (light and dark)-->

    <!-- MENU-JS -->
    <script>
        $(window).on("scroll", function () {
            var scroll = $(window).scrollTop();

            if (scroll >= 80) {
                $("#site-header").addClass("nav-fixed");
            } else {
                $("#site-header").removeClass("nav-fixed");
            }
        });

        //Main navigation Active Class Add Remove
        $(".navbar-toggler").on("click", function () {
            $("header").toggleClass("active");
        });
        $(document).on("ready", function () {
            if ($(window).width() > 991) {
                $("header").removeClass("active");
            }
            $(window).on("resize", function () {
                if ($(window).width() > 991) {
                    $("header").removeClass("active");
                }
            });
        });
    </script>
    <!-- //MENU-JS -->

    <!-- disable body scroll which navbar is in active -->
    <script>
        $(function () {
            $('.navbar-toggler').click(function () {
                $('body').toggleClass('noscroll');
            })
        });
    </script>
    <!-- //disable body scroll which navbar is in active -->

    <!-- bootstrap -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- //bootstrap -->
    <!-- //Js scripts -->