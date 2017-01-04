<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Submission Entity
 *
 * @property int $id
 * @property string title
 * @property int $work_id
 * @property int $author_id
 * @property string $isbn
 * @property string $oclc
 * @property string $edition
 * @property int $translator_id
 * @property int $language_id
 * @property bool $is_prose
 * @property int $media_id
 * @property int $collection_id
 * @property string $notes
 * @property \Cake\I18n\Time $created_on
 * @property string $created_by_name
 * @property string $created_by_email
 *
 * @property \App\Model\Entity\Work $work
 * @property \App\Model\Entity\Author $author
 * @property \App\Model\Entity\Translator $translator
 * @property \App\Model\Entity\Language $language
 * @property \App\Model\Entity\Media $media
 */
class Submission extends Entity
{

    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * Note that when '*' is set to true, this allows all unspecified fields to
     * be mass assigned. For security purposes, it is advised to set '*' to false
     * (or remove it), and explicitly make individual fields accessible as needed.
     *
     * @var array
     */
    protected $_accessible = [
        '*' => true,
        'id' => false
    ];
}
