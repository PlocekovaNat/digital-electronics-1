# Lab 2: Combinational logic
<a name="preparation"></a>

## Preparation tasks (done before the lab at home)

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

![Greater](https://user-images.githubusercontent.com/99497162/155610446-63b44b3f-d239-4853-92b6-be88490a5e8e.png)

   Less than:
   
![Less](https://user-images.githubusercontent.com/99497162/155607701-bac53a25-0ced-4322-a6b6-fe498fdb56ad.png)
 

2. Equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

![SoP](https://user-images.githubusercontent.com/99497162/155607732-04d87883-e3e9-4287-bb3d-fab27188055c.png)


![PoS](https://user-images.githubusercontent.com/99497162/155607753-15401957-0c5a-4cd1-bd3a-ccd061fe6bcf.png)


### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **xxxx02**

```vhdl
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

         -- MY FIRST TEST CASE (OK)
        s_b <= "0000"; s_a <= "0001"; wait for 100 ns;
        -- ... and its expected outputs
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '1'))
        -- If false, then report an error
        -- If true, then do not report anything
        report "Input combination 0000, 0001 FAILED" severity error;

	-- MY SECOND TEST CASE (MISTAKE)
	s_b <= "0000"; s_a <= "0011"; wait for 100 ns;
        -- ... and its expected outputs
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        -- If true, then do not report anything
        report "Input combination 0000, 0011 FAILED" severity error;
      
        -- TEST FOR BCD_OF_YOUR_LAST_ID_DIGIT
        s_b <= "0000"; s_a <= "0010"; wait for 100 ns;
        -- ... and its expected outputs
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '1'))
	-- If false, then report an error
	-- If true, then do not report anything
        report "Input combination ID numbers 0000, 0010 FAILED" severity error;
       
       -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
        
    end process p_stimulus;
```

2. Text console screenshot during your simulation, including reports.

   ![Screenshot](https://user-images.githubusercontent.com/99497162/155611753-e3689b4e-672e-4d3b-bc4c-4f83c824f283.png)

3. Link to your public EDA Playground example: 
   
   https://www.edaplayground.com/x/fpC8
