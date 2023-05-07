<!-- sidebar menu -->
<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
    <div class="menu_section">
        <h3>General</h3>
        <ul class="nav side-menu">
            <li>
                <a href="<%= request.getContextPath() %>/Films"><i class="fa fa-home"></i> Film</a>
            </li>
            <li>
                <a href="<%= request.getContextPath() %>/Plateaux"><i class="fa fa-home"></i> Plateau</a>
            </li>
            <li>
                <a href="<%= request.getContextPath() %>/Personnages"><i class="fa fa-home"></i> Personnage</a>
            </li>
            <li>
                <a href="<%= request.getContextPath() %>/Emotions"><i class="fa fa-home"></i> Emotion</a>
            </li>
        </ul>
        <h3>Planning</h3>
        <ul class="nav side-menu">
            <li>
                <a href="<%= request.getContextPath() %>/choix-film"><i class="fa fa-home"></i> Proposition de planning</a>
            </li>
            <li>
                <a href="<%= request.getContextPath() %>/choix-film-general"><i class="fa fa-home"></i> Planning general</a>
            </li>
        </ul>
    </div>

</div>
<!-- /sidebar menu -->