<?php

class Order extends Model
{
    protected $fillable = ['customer_id', 'product_id', 'address', 'price'];

    public function customer()
    {
        return $this->belongsTo(Customer::class);
    }

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
