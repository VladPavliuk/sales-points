<div class="header">
    <div class="header-top">
        <div class="container">
            <div class="row">
                <div class="logo col-lg-3 col-md-5 col-sm-4 col-xs-7">
                    <a href="/"><img src="/src/images/logo.png" alt="logo"></a>
                    <p>Sales<span>Point</span></p>
                    <span>{#text_the_best_store_online#}</span>
                </div>
                <div class="right-menu">
                    <div class="cart col-lg-5 col-md-5 col-sm-6 col-xs-5 pull-right">
                        <a href="/cart">
                            <button type="submit" class="btn btn-info">
                                <span>{#text_shopping_cart#}</span>
                                <span class='glyphicon glyphicon-shopping-cart'></span>
                            </button>
                        </a>
                        <p> {#text_now_in_your_cart#} <span><span
                                        id="totalAmountText">{$totalAmount}</span> {#text_items#}</span></p>
                    </div>
                    <ul class="col-lg-5 col-md-6 col-sm-8 col-xs-12 pull-right">
                        <div class="nav nav-pills">
                            <li>
                                <span>{#text_language#}:</span>
                                <select class="form-control" name="forma" onchange="location = '/' + this.value;">
                                    <option value="ukrainian">Українська</option>
                                    <option value="english" selected>English</option>
                                    <option value="russian">Русский</option>
                                </select>
                            </li>
                            <li>
                                <span>{#text_currency#}:</span>
                                <select class="form-control">
                                    <option value="UA">UA</option>
                                    <option value="USD">USD</option>
                                    <option value="EUR">EUR</option>
                                </select>
                        </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <nav class="navbar navbar-default">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="/">{#text_home#} <span class="sr-only">(current)</span></a></li>
                    <li><a href="/new">{#text_whats_new#} </a></li>
                    <li><a href="#">{#text_specials#}</a></li>
                    <li><a href="#">{#text_my_account#}</a></li>
                    <li><a href="/contacts">{#text_contacts#}</a></li>
                </ul>
                <form class="navbar-form navbar-right">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="{#text_search#}">
                    </div>
                    <button type="submit" class="btn btn-info">
                        <span class="glyphicon glyphicon-search"></span>
                    </button>
                </form>
            </div>
        </div>
    </nav>
</div>