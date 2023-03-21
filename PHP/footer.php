<footer>
    <div>
        <ul>
            <li><a href="https://twitter.com/">Twitter</a></li>
            <li><a href="https://codepen.io/">Codepen</a></li>
            <li><a href="tranhonghoanghuy1@gmail.com">Email</a></li>
            <li><a href="https://github.com">Github</a></li>
            <li>
                <p>👋</p>
            </li>
        </ul>

    </div>
</footer>

<script>
    const scrollToTopButton = document.getElementById("scroll-to-top");

    // Khi người dùng cuộn trang, hiển thị hoặc ẩn button
    window.onscroll = function() {
        scrollFunction();
    };

    function scrollFunction() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            scrollToTopButton.style.display = "block";
        } else {
            scrollToTopButton.style.display = "none";
        }
    }

    // Khi người dùng ấn vào button, cuộn lên đầu trang
    scrollToTopButton.addEventListener("click", function() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
    });
</script>
</body>

</html>