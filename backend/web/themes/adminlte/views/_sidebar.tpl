{use class="yii\bootstrap\NavBar"}
{use class="yii\bootstrap\Nav"}

<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
        <li class="active treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
          </a>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-share"></i> <span>Contenidos</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="treeview">
              <a href="/patologias"><i class="fa fa-circle-o"></i> Patologías
              </a>
            </li>
            <li class="treeview">
              <a href="/tratamientos"><i class="fa fa-circle-o"></i> Tratamientos
              </a>
            </li>
          </ul>
        </li>
        <li class="treeview">
          <a href="/blog">
            <i class="fa fa-edit"></i> <span>Blog</span>
          </a>
        </li>
        <li class="treeview">
          <a href="/testimonios">
            <i class="fa fa-edit"></i> <span>Testimonios</span>
          </a>
        </li>
        <li class="treeview">
          <a href="/promociones">
            <i class="fa fa-edit"></i> <span>Promociones</span>
          </a>
        </li>
        <li class="treeview">
          <a href="/preguntas-frecuentes">
            <i class="fa fa-edit"></i> <span>Preguntas frecuentes</span>
          </a>
        </li>
        <li class="treeview">
          <a href="/sobre-mi">
            <i class="fa fa-edit"></i> <span>Sobre mi</span>
          </a>
        </li>
        <li class="treeview">
          <a href="/nuestro-equipo">
            <i class="fa fa-edit"></i> <span>Nuestro equipo</span>
          </a>
        </li>
        <li class="treeview">
          <a href="/clinica">
            <i class="fa fa-edit"></i> <span>Clínica</span>
          </a>
        </li>
        <li class="treeview">
          <a href="/contacto">
            <i class="fa fa-edit"></i> <span>Contacto</span>
          </a>
        </li>
        <li><a href="https://adminlte.io/docs"><i class="fa fa-book"></i> <span>Documentation</span></a></li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>
