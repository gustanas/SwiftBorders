# SwiftBorders

A Swift extension on UIView to easily add borders to text fields or labels

# How to use it?

- Add Borders.swift to your project
- Add the borders in viewDidLayoutSubviews method, you can optionally define the color. For example:

``` Swift

override func viewDidLayoutSubviews() {
    phoneNumberTextField.addBorder(.bottom)
    countryCodeLabel.addBorder(.right)
    countryCodeLabel.addBorder(.bottom)
}  

```

Result: 

![Screenshot](https://github.com/gustanas/SwiftBorders/blob/master/Screen%20Shot%202016-09-14%20at%202.33.58%20PM.png)


Twitter: [@gusta_nas](https://twitter.com/gusta_nas)

Website: [gustanas.co](http://www.gustanas.co/)
