#!/bin/env ruby
# encoding: utf-8
class Memberurl

	def geturl
	arr = [
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100000041116152.jpg", :name => 'bla' }, 
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/1487167459.jpg", :name => 'bla' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100002467123003.jpg", :name => 'bla' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100002000411832.jpg", :name => 'bla' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100001314106197.jpg", :name => 'bla' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100001340327831.jpg", :name => 'bla' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100000910960952.jpg", :name => 'bla' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100005234500185.jpg", :name => 'bla' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100001066448386.jpg", :name => 'bla' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100001850477769.jpg", :name => 'bla' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100002274717846.jpg", :name => 'bla' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100001071208401.jpg", :name => 'bla' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100003198556738.jpg", :name => 'bla' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100000957474908.jpg", :name => 'bla' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100000045787516.jpg", :name => 'bla' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100003705974291.jpg", :name => 'bla' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100001699802004.jpg", :name => 'bla' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100001742563428.jpg", :name => '송지현' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100001448898537.jpg", :name => '남호원' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100001190104759.jpg", :name => 'bla' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/1184344295.jpg", :name => '백승용' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100000975534519.jpg", :name => 'bla' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100001300056614.jpg", :name => 'bla' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/1601351625.jpg", :name => 'bla' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/519557264.jpg", :name => '유성우' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100000337103719.jpg", :name => '고상원' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100001986937359.jpg", :name => 'bla' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100001928480198.jpg", :name => '윤주환' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100001880703080.jpg", :name => '진성주' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100001836043870.jpg", :name => '임선용' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100001726301654.jpg", :name => 'bla' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100001623690330.jpg", :name => 'bla' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100000939444736.jpg", :name => '박성우' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/100000259625630.jpg", :name => '김지원' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/1711885611.jpg", :name => '황선희' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/1680549739.jpg", :name => '김현종' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/1233102578.jpg", :name => '손영수' },
	{ :url => "http://res.cloudinary.com/dobny9ati/image/facebook/w_110,h_110,c_fill/1181257851.jpg" , :name => '황학범' }
	]
	end
end