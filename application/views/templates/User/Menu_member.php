<nav class="topnavbar navbar-default topnav">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed toggle-costume" data-toggle="collapse" data-target="#upmenu" aria-expanded="false">
						<span class="sr-only"> Toggle navigaion</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand logo" href="#"><img src="<?php echo base_url();?>assets/image/logo.jpeg" alt="logo"></a>
				</div>	 
			</div>
			<div class="collapse navbar-collapse" id="upmenu">
				<ul class="nav navbar-nav" id="navbarontop">
					<li class="active"><a href="<?php echo base_url()."Welcome/Index_member";?>">Beranda</a> </li>
					<li class="active"><a href="<?php echo base_url()."Welcome/Info_member";?>">Seputar Kost / Kontrakan</a> </li>
					<li class="active"><a href="<?php echo base_url()."Welcome/Status_sewa";?>">Status Pembayaran Sewa</a> </li>
					<li class="active"><a href="<?php echo base_url()."LoginMember/Logout";?>">Logout</a> </li>
					</ul>
				</div>
			</nav>