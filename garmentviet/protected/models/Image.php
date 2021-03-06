<?php

/**
 * This is the model class for table "image".
 *
 * The followings are the available columns in table 'image':
 * @property integer $id
 * @property string $File
 * @property string $Color
 * @property string $ColorEN
 * @property string $Kind
 * @property integer $ProductID
 */
class Image extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Image the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'image';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('File, Color, ColorEN, Kind, ProductID', 'required'),
			array('ProductID', 'numerical', 'integerOnly'=>true),
			array('File', 'length', 'max'=>200),
			array('Color, ColorEN', 'length', 'max'=>15),
			array('Kind', 'length', 'max'=>10),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, File, Color, ColorEN, Kind, ProductID', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'File' => 'File',
			'Color' => 'Color',
			'ColorEN' => 'Color En',
			'Kind' => 'Kind',
			'ProductID' => 'Product',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('File',$this->File,true);
		$criteria->compare('Color',$this->Color,true);
		$criteria->compare('ColorEN',$this->ColorEN,true);
		$criteria->compare('Kind',$this->Kind,true);
		$criteria->compare('ProductID',$this->ProductID);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}