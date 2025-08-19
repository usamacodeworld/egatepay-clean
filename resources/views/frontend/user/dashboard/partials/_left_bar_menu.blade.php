<div class="single-card-box d-lg-block d-none">
    <ul class="left-menu-box">
        <!-- Dashboard -->
        <li>
            <a href="{{ route('user.dashboard') }}" class="{{ isActive('user.dashboard') }}">
                <i class="fa-solid fa-gauge me-2"></i> Dashboard
            </a>
        </li>

        <!-- Monitoring Parent -->
        <li>
            <span class="sidebar-parent {{ request()->is('user/transaction/index*') ? 'active-parent' : '' }}"
                onclick="toggleDesktopChildMenu(this)">
                <span>
                    <i class="fa-solid fa-chart-line me-2"></i> Monitoring
                </span>
                <i class="fa fa-chevron-right arrow"></i>
            </span>
            <ul class="list-unstyled ms-3 mt-2 sidebar-child">
                <li>
                    <a href="{{ route('user.transaction.index') }}" class="{{ isActive('user.transaction.index') }}">
                        <i class="fa-solid fa-circle-dot me-2"></i> Monitoring
                    </a>
                </li>
                <li>
                    <a href="{{ route('user.transaction.archived') }}"
                        class="{{ isActive('user.transaction.archived') }}">
                        <i class="fa-solid fa-archive me-2"></i> Archived Transactions
                    </a>
                </li>
            </ul>
        </li>

        <!-- Successful Transactions -->
        <li>
            <a href="{{ route('user.transaction.successful') }}" class="{{ isActive('user.transaction.successful') }}">
                <i class="fa-solid fa-gauge me-2"></i> Successful Transactions
            </a>
        </li>

        <!-- My API Parent -->
        @can('merchant')
            <li>
                <span class="sidebar-parent {{ request()->is('user/merchant*') ? 'active-parent' : '' }}"
                    onclick="toggleDesktopChildMenu(this)">
                    <span>
                        <i class="fa-solid fa-bars fa-lg me-2"></i> My API
                    </span>
                    <i class="fa fa-chevron-right arrow"></i>
                </span>
                <ul class="list-unstyled ms-3 mt-2 sidebar-child">
                    <li>
                        <a href="{{ route('user.merchant.index') }}" class="{{ isActive('user.merchant.index') }}">
                            <i class="fa-solid fa-bars fa-lg me-2"></i> API Credentials
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('api-docs.index') }}" target="_blank">
                            <i class="fa-solid fa-download me-2"></i> User Guide
                        </a>
                    </li>
                </ul>
            </li>
        @endcan
    </ul>
</div>

<!-- Desktop JS for collapsible menus -->
<script>
    function toggleDesktopChildMenu(el) {
        const childMenu = el.nextElementSibling;
        const arrow = el.querySelector('.arrow');
        if (childMenu) {
            childMenu.classList.toggle('show');
            arrow.classList.toggle('rotate');
        }
    }
</script>

<style>
    .left-menu-box li a {
        background: transparent;
        color: white;
        display: flex;
        align-items: center;
        padding: 10px 12px;
        border-radius: 5px;
    }

    .active {
        background-color: #fec273 !important;
        color: black !important;
    }

    /* Parent item */
    .sidebar-parent {
        cursor: pointer;
        display: flex;
        align-items: center;
        justify-content: space-between;
        /* pushes arrow to right */
        padding: 8px 12px;
        border-radius: 5px;
        color: white;
    }

    .active-parent {
        background-color: #fec273;
        color: black;
    }

    /* Child menu */
    .sidebar-child {
        display: none;
    }

    .sidebar-child.show {
        display: block;
    }

    .sidebar-child li a {
        display: flex;
        align-items: center;
        padding: 8px 12px;
        font-size: 14px;
        color: #ccc;
        background: #2a2a2a;
        /* child background */
        border-radius: 4px;
        margin-bottom: 4px;
    }

    .sidebar-child li a:hover {
        color: white;
        background: rgba(255, 255, 255, 0.1);
    }

    /* Arrow rotation */
    .arrow {
        transition: transform 0.3s ease;
    }

    .arrow.rotate {
        transform: rotate(90deg);
    }

    .single-card-box {
        background: #1d1d1d !important;
        height: 100vh;
        padding-top: 15px;
    }

    /* Responsive */
    @media (max-width: 992px) {
        .single-card-box {
            display: none;
        }
    }

    /* Disable hover effect for top-level sidebar links */
    .left-menu-box>li>a:hover {
        background: transparent !important;
        color: white !important;
    }

    /* Keep hover effect for child links */
    .sidebar-child li a:hover {
        color: white;
        background: rgba(255, 255, 255, 0.1);
    }
</style>
