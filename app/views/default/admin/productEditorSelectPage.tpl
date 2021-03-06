{extends file='../layouts/main.tpl'}

{block name="content"}
    <a href="/admin" class="btn btn-default btn-sm">Beck to main admin page</a>
    <h3>Select category to find product</h3>
        <div class="input-group">
            <label for="category_id">Categories list</label>
            <select onchange="loadProductsFromCategory(this.value)" class="form-control" name="category_id" id="category_id">
                <option value="none">Виберіть категорію</option>
                {foreach $categoriesList as $parentCategory}
                    <option value="{$parentCategory["id"]}">{$parentCategory["category_$renderLanguage"]}</option>
                    {if isset($parentCategory["children_categories"])}
                        {foreach $parentCategory["children_categories"] as $children_categories_1}
                            <option value="{$children_categories_1["id"]}">--------{$children_categories_1["category_$renderLanguage"]}</option>
                            {if isset($children_categories_1["children_categories"])}
                                {foreach $children_categories_1["children_categories"] as $children_categories_2}
                                    <option value="{$children_categories_2["id"]}">----------------{$children_categories_2["category_$renderLanguage"]}</option>
                                {/foreach}
                            {/if}
                        {/foreach}
                    {/if}
                {/foreach}
            </select>
        </div>
        <br>

    <div class="row product-wrap">
        <div class="products-list">

        </div>
    </div>
{/block}

{block name="scripts"}
    <script src="/src/scripts/editor.js"></script>
{/block}