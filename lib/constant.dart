
bool regexPhone(String phone) =>
    RegExp(r"^((.+84|0)[3|4|5|6|7|8|9])([0-9]{8})+$").hasMatch(phone);

checkPhone(String? value) {
  if (value == null) value = '';
  if (!regexPhone(value) || value.length > 12 || value.length < 10)
    return phoneError;
  return '';
}

const String phoneNumberNullError = "Please Enter your phone number";
const String phoneError = "Invalid phone number";

