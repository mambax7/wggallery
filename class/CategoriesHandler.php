<?php

namespace XoopsModules\Wggallery;

/*
 You may not change or alter any portion of this comment or credits
 of supporting developers from this source code or any supporting source code
 which is considered copyrighted (c) material of the original comment or credit authors.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
*/

/**
 * wgGallery module for xoops
 *
 * @copyright      module for xoops
 * @license        GPL 2.0 or later
 * @package        wggallery
 * @author         Wedega - Email:<webmaster@wedega.com> - Website:<https://wedega.com>
 * @version        $Id: 1.0 images.php 1 Mon 2018-03-19 10:04:51Z XOOPS Project (www.xoops.org) $
 */

use XoopsModules\Wggallery;

\defined('\XOOPS_ROOT_PATH') || exit('Restricted access');

/**
 * Class Object Handler Images
 */
class CategoriesHandler extends \XoopsPersistableObjectHandler
{
    /**
     * Constructor
     *
     * @param \XoopsDatabase $db
     */
    public function __construct(\XoopsDatabase $db)
    {
        parent::__construct($db, 'wggallery_categories', Categories::class, 'cat_id', 'cat_text');
    }

    /**
     * @param bool $isNew
     *
     * @return object
     */
    public function create($isNew = true): object
    {
        return parent::create($isNew);
    }

    /**
     * retrieve a field
     *
     * @param null $id
     * @param null $fields
     * @return \XoopsObject|null reference to the {@link Get} object
     */
    public function get($id = null, $fields = null): ?\XoopsObject
    {
        return parent::get($id, $fields);
    }

    /**
     * get inserted id
     *
     * @return int reference to the {@link Get} object
     */
    public function getInsertId(): int
    {
        return $this->db->getInsertId();
    }

    /**
     * Get Count Categories in the database
     * @param int $start
     * @param int $limit
     * @param string $sort
     * @param string $order
     * @return int
     */
    public function getCountCategories(int $start = 0, int $limit = 0, string $sort = 'cat_weight ASC, cat_id', string $order = 'ASC'): int
    {
        $crCountCategories = new \CriteriaCompo();
        $crCountCategories = $this->getCategoriesCriteria($crCountCategories, $start, $limit, $sort, $order);

        return parent::getCount($crCountCategories);
    }

    /**
     * Get All Categories in the database
     * @param int $start
     * @param int $limit
     * @param string $sort
     * @param string $order
     * @return array
     */
    public function getAllCategories(int $start = 0, int $limit = 0, string $sort = 'cat_weight ASC, cat_id', string $order = 'ASC'): array
    {
        $crAllCategories = new \CriteriaCompo();
        $crAllCategories = $this->getCategoriesCriteria($crAllCategories, $start, $limit, $sort, $order);

        return parent::getAll($crAllCategories);
    }

    /**
     * Get Criteria Categories
     * @param $crCategories
     * @param $start
     * @param $limit
     * @param $sort
     * @param $order
     * @return int
     */
    private function getCategoriesCriteria($crCategories, $start, $limit, $sort, $order): int
    {
        $crCategories->setStart($start);
        $crCategories->setLimit($limit);
        $crCategories->setSort($sort);
        $crCategories->setOrder($order);

        return $crCategories;
    }

    /**
     * Get Criteria Categories
     * @param $cats
     * @return int|string
     */
    public function getCatsList($cats): int|string
    {
        $listText = '';
        if (\is_array($cats)) {
            foreach ($cats as $cat) {
                if ('' !== $listText) {
                    $listText .= ', ';
                }
                $categoryObj = $this->get($cat);
                if (\is_object($categoryObj)) {
                    $listText .= '<span>' . $this->get($cat)->getVar('cat_text') . '</span>';
                }
            }
        }

        return $listText;
    }
}
