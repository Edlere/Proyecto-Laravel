<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

        <!-- Sidebar user panel (optional) -->
        @if (! Auth::guest())
            <div class="user-panel">
                <div class="pull-left image">
                    {{-- <img src="{{ Gravatar::get($user->email) }}" class="img-circle" alt="User Image" /> --}}
                    <img src="/img/avatar.png" class="img-circle" alt="Imagen" />
                </div>
                <div class="pull-left info">
                    <p>{{ Auth::user()->name }}</p>
                    <!-- Status -->
                    <a href="#"><i class="fa fa-circle text-success"></i> {{ trans('adminlte_lang::message.online') }}</a>
                </div>
            </div>
        @endif

        <!-- Sidebar Menu -->
        <ul class="sidebar-menu">
            <li class="header">OPCIONES</li>
            <!-- Optionally, you can add icons to the links -->
            <li class="active"><a href="{{ url('home') }}"><i class="fa fa-square" aria-hidden="true"></i><span>{{ trans('adminlte_lang::message.home') }}</span></a></li>
            <li><a href="{{url('admin/Compra')}}"><i class="fa fa-book" aria-hidden="true"></i><span>Libros</span></a></li>
            <li><a href="{{url('admin/Vender')}}"><i class="fa fa-line-chart" aria-hidden="true"></i> <span>Vender</span></a></li>
            <li><a href="{{url('admin/Vender')}}"><i class="fa fa-shopping-cart" aria-hidden="true"></i><span>Carrito</span></a></li>
        </ul><!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
</aside>
