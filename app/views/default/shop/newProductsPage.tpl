{extends file='../layouts/main.tpl'}

{block name="content"}
    <!-- LIST OF LAST ADDED PRODUCTS -->
    <div class="row product-wrap">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 title">
            <h3>{#text_new_products_1#} <span>{#text_new_products_2#}</span></h3>
        </div>
        <div class="products-list">
            {foreach $lastAddedProducts as $product}
                <div id="{$product["id"]}" class="product-in-content product col-lg-3 col-md-4 col-sm-6 col-xs-6">
                    <div class="prod-img">
                        <a href="product/{$product["id"]}">
                            <img src="/src/images/products/{$product["category"]}/{$product["main_image"]}"
                                 alt="{$product["product_title"]}"
                                 title="{$product["product_title"]}">
                        </a>
                    </div>
                    <div class="prod-footer">
                        <h5><a href="product/{$product["id"]}"">{$product["product_title"]}</a></h5>
                    </div>
                    <span class="price">{$product["price"]}</span>
                </div>
            {/foreach}
        </div>
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 btn-view-more">
            <button onclick="loadMoreNewProducts();"
                    class="button-load-more btn btn-info pull-right">{#text_view_more_products#}</button>
        </div>
    </div>
    <!-- END OF LIST -->
{/block}

{block name="scripts"}
    <script src="/src/scripts/app.js"></script>
    <script src="/src/scripts/new_products.js"></script>
{/block}


