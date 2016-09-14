# SwiftBorders

A Swift extension on UIView to easily add borders to text fields or labels



# How to use it?

- Add Borders.swift to your project
- Add the borders in viewDidLayoutSubviews method:

``` Swift

override func viewDidLayoutSubviews() {
    phoneNumberTextField.addBorder(.bottom)
    countryCodeLabel.addBorder(.right)
    countryCodeLabel.addBorder(.bottom)
}  

```
