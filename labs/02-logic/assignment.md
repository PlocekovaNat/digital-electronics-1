# Lab 2: YOUR_FIRSTNAME LASTNAMEE
<a name="preparation"></a>

## Preparation tasks (done before the lab at home)

*Digital* or *Binary comparator* compares the digital signals A, B presented at input terminal and produce outputs depending upon the condition of those inputs.

1. Complete the truth table for 2-bit *Identity comparator* (B equals A), and two *Magnitude comparators* (B is greater than A, B is less than A). Note that, such a digital device has four inputs and three outputs/functions.

   | **Dec. equivalent** | **B[1:0]** | **A[1:0]** | **B is greater than A** | **B equals A** | **B is less than A** |
   | :-: | :-: | :-: | :-: | :-: | :-: |
   |  0 | 0 0 | 0 0 | 0 | 1 | 0 |
   |  1 | 0 0 | 0 1 | 0 | 0 | 1 |
   |  2 | 0 0 | 1 0 | 0 | 0 | 1 |
   |  3 | 0 0 | 1 1 | 0 | 0 | 1 |
   |  4 | 0 1 | 0 0 | 1 | 0 | 0 |
   |  5 | 0 1 | 0 1 | 0 | 1 | 0 |
   |  6 | 0 1 | 1 0 | 0 | 0 | 1 |
   |  7 | 0 1 | 1 1 | 0 | 0 | 1 |
   |  8 | 1 0 | 0 0 | 1 | 0 | 0 |
   |  9 | 1 0 | 0 1 | 1 | 0 | 0 |
   | 10 | 1 0 | 1 0 | 0 | 1 | 0 |
   | 11 | 1 0 | 1 1 | 0 | 0 | 1 |
   | 12 | 1 1 | 0 0 | 1 | 0 | 0 |
   | 13 | 1 1 | 0 1 | 1 | 0 | 0 |
   | 14 | 1 1 | 1 0 | 1 | 0 | 0 |
   | 15 | 1 1 | 1 1 | 0 | 1 | 0 |

<a name="part1"></a>



### 2-bit comparator

1. Karnaugh maps for other two functions:

   Greater than:
   
![Greater](https://user-images.githubusercontent.com/99497162/155606842-715271b4-75db-4f3b-bd92-ede62f9bec26.png) 

   Less than:
   
![Less](https://user-images.githubusercontent.com/99497162/155606929-df4121d8-8daf-43bf-a516-f9467dc2dcff.png)  

2. Equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

![SoP](https://user-images.githubusercontent.com/99497162/155606966-eb4bcce1-b0a4-4880-a47f-09f3f8e6470c.png)

![PoS](https://user-images.githubusercontent.com/99497162/155607001-ec5f3f64-a8d7-4f3b-9009-174d714699cd.png) 

### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **xxxx??**

```vhdl
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= "0000"; s_a <= "0010"; wait for 100 ns;
        -- ... and its expected outputs
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '1'))
       -- If true, then do not report anything
        report "Input combination ID numbers 0000, 0010 FAILED" severity error;

       
    end process p_stimulus;
```

2. Text console screenshot during your simulation, including reports.

   ![your figure]()

3. Link to your public EDA Playground example:

   [https://www.edaplayground.com/...](https://www.edaplayground.com/...)
   
   
   https://www.edaplayground.com/x/fpC8
