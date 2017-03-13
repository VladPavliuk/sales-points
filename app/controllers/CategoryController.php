<?php

class CategoryController extends Controller
{
    public function viewAction($categoryId)
    {
        $this->smarty->assign("singleCategory", $this->getSingleCategory($categoryId));
        $this->smarty->assign('parentCategoriesList', $this->getCategoriesTree());
        $this->smarty->assign("categoryProductsList", $this->getCategoryProducts($categoryId));
        $this->smarty->assign('totalPrice', $this->getTotalPrice());
        $this->smarty->assign('totalAmount', $this->getTotalAmount());

        $this->smarty->display("contents/categoryPage.tpl");
    }

    private function getSingleCategory($categoryId)
    {
        $categoryModelObject = new Category();
        $singleCategory = $categoryModelObject->getSingleCategory($categoryId);

        return $singleCategory;
    }

    private function getCategoryProducts($categoryId)
    {
        $categoryModelObject = new Product();
        $categoryProductsList = $categoryModelObject->getCategoryProducts($categoryId);

        return $categoryProductsList;
    }
}