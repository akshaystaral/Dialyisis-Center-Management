<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
crossorigin="anonymous" referrerpolicy="no-referrer" />

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<style type="text/css">
.paint-card {
    box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3)
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

span {
    display: inline-block;
    text-decoration: none;
    color: inherit;
}

.section-head {
    margin-bottom: 60px;
}

.section-head h4{
    position: relative;
    padding: 0;
    color: #f91942;
    line-height: 1;
    font-size: 34;
    letter-spacing: 0.3px;
    font-weight: 700;
    text-align: center;
    text-transform: none;
    margin-bottom: 30px;
}
.section-head h4::before{
    content: '';
    width: 60px;
    height: 3px;
    background: #f91942;
    position: absolute;
    bottom: -10px;
    left: 0;
    right: 0;
    margin: 0 auto;
}

.section-head h4 span{
    font-weight: 700;
    padding-bottom: 5px;
    color: #2f2f2f;
}

.section-head p{
    color: #818181;
    font-size: 16px;
    line-height: 28px;
    text-align: center;
}

.item{
    background: #fff;
    text-align: center;
    padding: 30px 25px;
    box-shadow: 0 0 10px rgba(0,0,0,0.7);
    border-radius: 10px;
    margin-bottom: 30px;
    border: 1px solid  rgba(0,0,0,0.7);
    transition: all 0.5s ease 0s;
    -webkit-transition: all 0.5s ease 0s; ;
}

.item:hover{

    background: #f91942;
    box-shadow: 0 8px 20px 0 rgba(0, 0, 0,0.2);
    -webkit-transition: all 0.5s ease 0s;
    transition: all 0.5s ease 0s;
}
.item:hover .item,
.item:hover span.icon{
    background: #fff;
    border-radius: 10px;
    -webkit-transition: all 0.5s ease 0s;
    transition: all 0.5s ease 0s;

}

.item:hover h6
.item:hover p{
    color: #fff;
    -webkit-transition: all 0.5s ease 0s;
    transition: all 0.5s ease 0s;
}

.item .icon
{
    font-size: 50px;
    margin-bottom: 25px;
    color: #f91942;
    width: 90px;
    height: 50px;
    line-height: 96px;
    border-radius: 50x;
}

.item .feature_box_col_one{
    background: rgba(247, 198, 5,0.2);
    color: #f91942;
}

.item .feature_box_col_two{
    background: rgba(255, 77, 28, 0.15);
    color: #f91942;
}

.item .feature_box_col_three{
    background: rgba(0,147,38,0.15);
    color: #f91942;
}

.item p{
    font-size: 15px;
    line-height: 26px;
}

.item h6{
    margin-bottom: 20px;
    color: #2f2f2f;
}



</style>
