1.  From the column mixed_value, extract the numeric characters that appear at the very beginning of the value. The extraction must stop as soon as a non-numeric character appears.
A.  select mixed_value,substring(mixed_value from '^[0-9]+') as extracted_number
    from regex_practice

2.  From the column mixed_value, extract the numeric characters that appear at the very end of the
    value. No alphabetic or special characters should be included.
A.  select mixed_value, substring(mixed_value from '[0-9]+$')as extracted number
    from regex_practice

3.  From the column mixed_value, extract only the first single character of the value, regardless of
    whether it is a letter or a number.
A.  select mixed_value,substring(mixed_value from '^.') from first_character
    from regex_practice

4.  From the column mixed_value, extract only the last single character of the value.
A.  select mixed_value,substring(mixed_value from '.$')as last_character
    from regex_practice

5.  From the column mixed_value, extract exactly two consecutive numeric characters that appear anywhere in the value. Do not extract more or fewer than two digits.
A.  select mixed_value, substring(mixed_value from '[0-9]{2}') as consecutive_digits
    from regex_practice

6.  From the column mixed_value, extract exactly one numeric character that appears anywhere in the value.
A.  select mixed_value, substring(mixed_value from '[0-9]{1}')as one_character
    from regex_practice

7.  From the column phone, extract the country code present at the beginning of the phone number. The extracted value must contain only the country code digits.
A.  select phone,substring(phone from '^\+?([0-9]+)') as country_code
    from regex_practice

8.  From the column mixed_value, extract the numeric portion that is present between alphabetic characters.
A.  select mixed_value,substring(mixed_value from '[A-Za-z]+([0-9]+)[A-Za-z]+') as numeric_part
    from regex_practice

9.  From the column email, extract the text that appears before the at-symbol. The extracted value must not include the at-symbol itself.
A.  select email, substring(email from '^[^@]+') as username
    from regex_practice

10. From the column email, extract the text that appears after the at-symbol including the domain name.
A.  select email, substring(email from '@(.+)$') as domain_name
    from regex_practice

11. From the column email, extract only the domain name without including the at-symbol.
A.  select email, substring(email from '@(.+)$') as domain_name
    from regex_practice

12. From the column email, extract only the text that appears after the last dot in the email address.
A.  select email, substring(email from '[a-z A-z]+$') as extension
    from regex_practice

13. From the column mixed_value, extract only alphabetic characters that appear together as a continuous sequence.
A.  select mixed_value,substring(mixed_value from '[a-z A-Z]+') as alphabetic_char
    from regex_practice

14. From the column mixed_value, extract only numeric characters that appear together as a continuous sequence.
A.  select mixed_value,substring(mixed_value from '[0-9]+') as continuous_numeric_char
    from regex_practice

15. From the column full_text, extract exactly the first three characters of the value.
A.  select full_text,substring(full_text from '^[0-9 a-z A-Z]{3}') as first_3_characters
    from regex_practice

				OR
    select full_text,substring(full_text from '^.{3}') as first_3_characters
    from regex_practice

16. From the column full_text, extract exactly the last two characters of the value.
A.  select full_text,substring(full_text from '.{2}$') as last_2_characters
    from regex_practice
                        
                          OR

    select full_text,substring(full_text from '[0-9 a-z A-Z]{2}$') as last_2_characters
    from regex_practice

17. From the column full_text, extract the employee number portion that appears between the alphabetic prefix and the first underscore.
A.  select full_text,substring(full_text from '^[A-Z a-z]+([0-9]+)_')number_portion
    from regex_practice

18. From the column full_text, extract the country code that appears at the end of the value.
A.  select full_text,substring(full_text from '[0-9]+$') as code_at_end
    from regex_practice

19. From the column full_text, extract the alphabetic text that appears between two underscore characters.
A.  select full_text,substring(full_text from '_([A-Za-z]+)_') 
    from regex_practice

20. From the column phone, extract the numeric characters that appear immediately after the plus sign. The extraction must include only the digits that represent the country code.
A.  select phone,substring(phone from  '^\+([0-9]+)') as country_code
    from regex_practice
