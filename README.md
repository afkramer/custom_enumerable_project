# Custom Enumerable Project

## Instructions

This repository complements the [Custom Enumerables Project](https://www.theodinproject.com/lessons/ruby-custom-enumerables) in the Ruby Course for The Odin Project. The goal of this project is to reimplement common methods used frequently through the enumerables module with objects like arrays and hashes. This project will also familiarize you with how to work with blocks and procs. Some starter code and specs are provided to validate the correctness of your solutions.

## My notes about this project

This was a super fun project because it really helped me wrap my head around using blocks and yield. For example, at one point I noticed that I was using the same code over and over again, so I refactored and created a method that counts matches in the array to be used for my_any?, my_all?, my_none? and count. But that meant that I had to capture the block and pass it on to my new helper method. That really helped me grasp what was going on.

I'm sure this is the kind of thing I will need to practice a lot, however! These are some tricky concepts.