<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TarotFaliForm.aspx.cs" Inherits="fortunewhisp.TarotFaliForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tarot Falı Formu</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #6a0dad;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            text-align: center;
            background-size: cover;
            background-position: center;
        }

        .container h2 {
            text-align: center;
            color: #333;
        }

        .cards {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-bottom: 20px;
        }

        .card {
            width: 100px;
            height: 150px;
            margin: 10px;
            cursor: pointer;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
            background-color: white;
            background-image: url('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMSEhUTExMWFhUWGBsaGRgYGRkZGxwgHyAdGBsgGBkbHSggGxsmHhgeITEiKSkrLi4uHR8zODMtNyotLisBCgoKDg0OGxAQGyslHyYrLS0tLS8tLTUvLS0tLjctLS0tLS0tLS0tLS8tLS8tLS8tLS0tLS0tLS8vLS0tLS0vLf/AABEIAScAqwMBIgACEQEDEQH/xAAcAAACAwEBAQEAAAAAAAAAAAAEBQACAwEGBwj/xABPEAACAgAEAwQEBwwHBwQDAQABAgMRAAQSIQUxQRMiUWEycYGRBhQjM0JzoVJTYnKCkrGztMPT8CQ0VFWjwdEHFUODorLhY5PC8ZSk4xj/xAAXAQEBAQEAAAAAAAAAAAAAAAAAAQID/8QAKREAAgEEAQMDBAMBAAAAAAAAAAERAiEx8EESUWGRoeFxgcHxIjLRsf/aAAwDAQACEQMRAD8AZ/7WP9pkmXkOSyTVItCWWgSpO4SMHbVRFnerob8vkeegmdtWZzK9p1E0kkjj8YKr6fUaPliZbOM82YzLfOaZJQfB3dVv2GUkeYGOcK4YksczNPGhRNQDa7B1KLal3BsrtZthtjLcFSB/iK/2mD/H/g4nxFf7TB/j/wAHFuHommdmRZNCArZkVb1qn0Srbhjz8McbMxiv6LDvuPlJz5bgTbcuRxZ+vsLbJz4iv9pg/wAf+DifEV/tMH+P/BwVFAzAMvD9SnkQM0QfURLvi3xST+7j7s3/ABMTq2xY25nlwUV1XNwBXFMKmN7EdYdtmI28cA5nLhKqWN76J2m3r1ouGXxST+7j7s3/ABMT4pJ/dx92b/iYdS2BG3FKJZrUBsTZuuV1yu+nhfWt8W7IaVOtbYkFd7Wq3baqN9L5HDT4pJ/dx92b/iY4+XcAk8PoAWSRmgAOpJ7Xlh1LY/0nTtwFsqoMo7VD2fonepN67m3t3xwZYXGO1Tv8z3vk967+3t2vGnxyP+zRfn5j+NjbLfKX2eSV656TmWq+V1LtyxZ2xIWyL9GxOobECt7PPcbVQrrR3G2IiWQNSi/pHVQ9dAnblsDht8Uk/u4+7N/xMT4pJ/dx92b/AImJ1LY/0vTtzOEMiNGubgCv6QqbfpzMNj2YH+Ir/aYP8f8Ag4M+KSf3cfdm/wCJifFJP7uPuzf8TDqWwWPH/QP4iv8AaYP8f+DifEV/tMH+P/BwZ8Uk/u4+7N/xMCyZhFJVspGrDYgtmAR6wZdsJnUSFslfiK/2mD/H/g46uRF7ZmC/XMPtMQrG6dmyzjsI1aOOwUeVt9aJe8rKQAxPUYnC+GJJFM7TxoUQEBtdg61FtS7ijp7urdhhIg9N8F/h/n+GSqsrvPlzuUd+0BXlqhks7+V10IB3H6M4bn48xFHNE2qORQynxBFj1Hyx+R8ubgmQmxHpkQ77EusbVYumDg/kjDngnw/z2UhSCF1EaatIIJPeYuevixxUQR8O9HMfUfvYcXjyK6EZp0TtFJ0sJLoOV+ihB70d1tyGKcO9HMfUfvYcWzhqPL7X8i/j99mF7dRzxGXfc0JXT2UROgsplmZSBzpe6L0xgknfdj4UBjDsTLKsaBL2QFQQGrbWb8QNRO3XlhnwHNalniC96SEIFjQU1BqaQjkQSDqNDqeQwDLIkKNHGwd3FSSL6IHVIz1B+k3XkNrJYJkz4nmQ8h0E9moCJv8ARUBVPtrV6ycChz90R7T/AJb4rg2XhUyxLMY2CMSLrwrc+Rs+71Y1ZEuzPPR9m5VZA4H0l1UffWBzIfE+/HMdViDYJBHIg0R6iOWALOWBIJIIJBFnYjYg4M4UfnmJPdgk97Dsh+swLmcw0jF3YszGySb/AJHlgmI6MtIfvrqg9SfKOfeY8R4KsgJwflPmMwN7Bifw5M0Z/WjBOQzCRxZmOQMHZAAGS6IBG5q1piKvx6nGPCQTJ2ZsdvGyAt1LDukeIMqgDB4FOReGPiftxtm4JIm0SBlagaNjmLGBhizMSbJs/wAjFIWViT6VeZJoeugT9mNc4mh2QSawrEBgTRo11/n14Hx1EJIAFk7AYAms+J95w6zXDJZ1jnCkaojrLAgExKASDW+pArDxOrwwpzmWaN2jcd5SQd75eePfcO45AkKo04YMtPv3vmyNgRSsG2AA9d2cTyi+GeWjy8qsJFgJLKRJAscgpKCd7Y0H9LUOR38sVPCAd0kdVbbTJFKHr067iMrejq2I5XQx7hs/Eg1pOrR2FaRWJ27TVUh+iSNyDtzqxjGLiCThSrKSoDNpBofJSqRtsDbAm/8APcl2B4cQdmM5GTZQBb8dM8a39mFuHWe+c4h+M37SmEuFLnfBagzh3o5j6j97DgvLxhnyKsLVgAR4g5iUEYE4d6OY+o/ew4NyXzmQ/J/aJcZq30C31Ac1xCRwUsLHfoIqontVQNXrNnGWT0a17S9GoatPOr3xk/M+s43zmSeIgSKVJUML8CL/APHsON2wZvkxkqzpuul1ftrbBEnEJGjWIuSikkC9t6/0+04GVSTQ5nGucyrxOUcUy8xhYXLZGJHcLI+hd7ar6YHPvxAOflufeB+kge3ExQETiPRHo1l6OsGquzWmt+VYLz6U8cAAIhWmGoKC28k3ePLfufkjFOFjQGzB5RmowfpSHdfWF9M+pR1wMpHZsbRizaSDqLrVNqB5b8up57dcY5Lwdgj1CQgbKt8rrvKOdiufOj6t7FVsKrqKKt6WoXfpLS8xWk78schcgOAFNruSASBY3Un0TdCx44tk6LaToAcadTg0nXUNO4O1cjzONEN+MIO07RRSTDtF8r9NfyXDL7BjHOyoxXs49ACgHe7IG5wRkPlozD9MXJF5mvlE/KADAeK19LC8HERX3GvAclDKX7aXRSMQK50D18ufswrkUWQDY8aq/YccxMVK5JsduzueZ3PP2nDXi+RgjjhaKbWzLbCvM7+XUfk4AzeTeIqHFalDD1HcYwxM3TGLGuWzLxtqjYq3iDXsPiPI4Y5vOOYI2B0F3lV+zAjD0I61qlKT3jvXXAGYgVVRhIrFgSVGq13I3sAdP5FE75j+rQ/WTfohw5TLwwzPfOcQ/Gb9pTCXDrPfOcQ/Gb9pTCXEoxvYtYZw70cx9R+9hwbkvnMh+T+0S4C4d6OY+o/ew4NyXzmQ/J/aJcSrfQLjeRTrIawSCDsQaPsIwVxLiss+ntHLaQABe2wq68Tz9uA35n1nF8s6h1LLqUEErdWPC8bhZMyZ46Te5xfMOpZiq6VJJAu6GLusfZqQzdpqbUpUUB3ao6vX091bgPfgzMFgzVohqPYspN82q78FJob2B4YR5PKmV9IpRRZmPooo5sfIfbsOuNOHJK2pI2KqR8oSxVAvK5D4bn18heNJG1jsMurMvpE135SoJ1MByQC9K9OZs8pZOxc5Oyt2zBY1bsYVJoVqCAgyOb21m7PsHIYFzM+thbMVUaEsDUEBOkEDa6OLZtkAEaFHUEN2mgq5JUWps+iD5c7OBsEg2eu+DnDco8MpkkNkVuNFjUh5ajff0rYI9Ii9rHls0iAnSxbxtNH2ajg2LhOYAYdnp1qBTMiGrVvRdgeajpgLNZZ420yIyHwYVfmPEeYxmlXdy1YVgmVnkHbgyGRCDK50gKSdMRWt+S+HMYtnkEqmdABuO1QfRY/SA+4c+5rHhgPLy6HV9CPpN6XFqfxhYse3BaBoiJYiXSgrMUIS2FtGwPpCvfzHjjURvsQIyWUEmVlOlQ0TatVNZFejeqh7j7OeFGGcqHs3fLswiPzseo2nTvfdx+D+w0eazFRGQnG2VyryEhFLEAsa32Av/L31jucWMFezZmGldWpQtNW4FE9f5OCOFcXly5bs2I1KQR03GxrlYNG/LBtxYKJuADB2Y/q0P1k36IcBO5JskknmSST7ScG5j+rQ/WTfohweVvA4e8hme+c4h+M37SmEuHWe+c4h+M37SmEuM0Y3sarDOHejmPqP3sODcl85kPyf2iXAXDvRzH1H72HBmVcB8gSQAKJJ2AHxiWyT0GJVvoFxvIqABbc0L3NXXs64vnEVXYI2pQSFaqsdMFf7rJsmWAAbn5QPQ9UWrFeyy685JJT4Rr2Y9rvZ/wCjGpJADhgvDgm+YYxjmIxRlb8k+gPNq8gcReJML7CMRUDbJbSV1uU2yjl6OkYwMaqSXYMwZDpBsOD3m+VUnSaodTZPUYXFjaSZ5gY4kCxoC/ZqRyA3Z2NF2rqfYByxnPMqApEdQ1BhLpKSbrTLz2WyfXjKfMFgF5IpYoux06jZGqrbpucb8N4TPmDUMbP4kbKPWx29l4WWRduwFhkj/F41ddppQWDdY0sqCvg7EN3uYA253gufgcMG2ZzShhzjhUyN6i2yqfXjDi0iB4JEDGLs00hqs9mSrBq2va/yhidSqwXpaMm4Yq/PTBHO7LoeQre/yhHI77jcjriyMYiIZiGhajYOoAHlLCehH20VI8PRcPzZhXMf0Vsws5Zo5FUsGDFtmIBoi9xzBvbx83xZCBFBVyIGDAG6Z3LBL6kXv5kjGU23DK0kpQHm8uY3aNuaMVPs2seR54tlczoIJUOoN6HsoTRFkAjcXzw84jl8pLM4OYeKQEKS6aoyVAQkMptRa8zgbPfBfMRrrVRNGdw8J1ivUN/srFVaeSOh8ASRtGO2gdiIwmt6ClWawVonvDarqj1GND2U240wSeHKFvUf+EfI2vmuAIZCrBl2ZSCDQNEb8jtzxvrR/S7jU7M+7a2O6jQKCeFjbe8aaJJTNZV4jpkUqel9R4qeTDzFjGODoMzLEukU8dKxQgSRjVy1DcI2/k17Y72mXfmjxHxjPaJ+Y5DD884SxCMMxEgVCr6mIJYaa0myOd77AfycbZj+rQ/WTfohxYcNVgTHmIiBz164yPXqXT/1Y7n49MESakYh5SdDo+xEQFlCaujz8MJuhFmE575ziH4zftKYS4dZ75ziH4zftKYS4lGN7FrDOHejmPqP3sOJnvm8v9U366bE4d6OY+o/ew4me+by/wBU366bDn7/AIJxvc24RxFYkmVlY9qmkaSK5MNwfxh49cL1YCu6Dzu7o3sNhVVz5+GCeHZB5iQiltKsSF3Oysw257kV6yPEYFYUSPDbbf7ca8ELGVtt+Q07bbXdGue5647BAzsERSzHkBz/APrz6Y7lcs0jBVq9ySTQAG5Zj0UDcnHqcjGsQMcXP/iSHuk0NRBPONQO8eqir+UZQuaquk1TTJ3hvAIIQZMyyuV3Is9kvSmI3ka9tI26b7WHxv4WSSjsobihG1LSsw89Oyj8FfbeF3GeJGZgq2Il9Baqzy1EeJ6DoNvElbjNNE/yqyadcWpN0gTsi3aAOGACUbIINm6roP5rBnByJLhkvst5Cw2MVDvOu24IABXr3eRrAb5RhGshrSxIHeUnaibW7HpfztZOZ+RhEf05QryeS8409Z9M+tPDG3cwrDyLOIUzCrPGFlUJGutkCKFKqGRgNxtuNV7+O4mYlRY+3RhLOgWN3GoKpohJAGUFnoBdXIMAdyRgLNz9iVREiICIzM8av2hdVc7sCVTegFI5Xd8pJIkM/onspEXXHdkLIiuy2d7Um1PPZcYg3ItijLEKoJJIAA5knYYN4TxebLNcTEeKndW/GX/PY+eM5kfLy91+8pDK67WD3lYeRFH7MCsxJskknmSbPtJxvP0OePqe2MuV4gpZk0TAWxWtY8/CVPX3h48r8xxXhEkBBNMh9GRfRPkfuW8j51eA4JmRg6EqwNgj3e0dK5HcY9Xl+IiVNYWw3dkiqxfOgCeoFr40VsMqNjnDoxg6yq85PIhjRFmjzHj68XebUSWAJLaieR8wK2AN+Hhg7ivDgg7SI6ojXWyt8rPVTR0t5EGmBGFuOqaZyagZ5LiSpl5oirXJyN90cuYvntzr/wArMGQ8OdoWmCkorAFug2cmz0rSPzl8RgMYqYY6z3znEPxm/aUwlw6z3znEPxm/aUwlxijG9jVZrBPoEgq9aaPV3ke/+ivbjfPfN5f6pv102COO5RY3QIAoMCMRZ3JJv28jXLbA+e+by/1TfrpsV5W8GQrg3H5suTpc0VYUSWAOltNA7DvUfZ67X5jMPI1sWYk7Aktz6CyTjHDPg8RFyj09Qjh+sb6X5Cm/WUwaSuVNuwdFH2C9kldozaS3TWNzv97h5nxffkuBuIZgLCqqT8qLF8+yB2v8KRwZG8go5Yqo1kiM7Oy5aI+RPfb1mwT9acDcSmV52O4jDaVqrCL3Fq9vRUYwle5puwPlMwY3VxRKsCLAI2N8jjOR7JJqz4AAewAAD2Yb5fhkcozLoX0RAlCa32Zhq5nkvl79sY5SUxQGRDpd5DHr6ooUMdJG6ltXMb0u2Oj7mCnD8tTM8qnREAzKbGonZFr8Ijf8EN4YDnmZ2Z2NsxJJ8zucOldmZss84ljKM4di5EbLGZAwLDUAK0muYY9cBQ8K1sFWeFmOwA7ck+odjjKq5Zp02sMeFJIYWJMDaIwYu0MLFCXX7o2opjs2wNbYSZwtrYu2pibZgwayd/SGx9mGR4cYtaHM5TvjS3fkaqYNzWOgbUc/PFMxwMoqs0+X0tyYNKyk+GpYiL8ueImkytODJPlYSv8AxIAWH4Ud2w/IJ1DyLeGAHQjmCL3Fgj3YbZdfi8bzRyRvJqVFZNfyYYOWbvotMQmkHpbeWN8q7NKkDzdvHMo1Al20llvUC47rKd7HQEHDqiSRIozWbaQIGC9xdIpVXayd6Avn/O+NeF5oRv3iezcaXrw5hh+EpAcHxXG3DeGiXLzSksDGARVaTtdHr+j28sCwmPs3DBu020EEUPGxWNtWgynceLIyOUYA6maNlOymT6S+STABgejURsDhNxDK9mwKklGGqNjsauqbwdSNJHiPMYPb5RI/GaIx/wDMh+bN+JQov5Rx2M9umnm0lsn1yAax/wA1NJ/GIxzVrnR3K5f4STrA0Ic7kbkktVNqprsb6Krw8zah3LGyST4k2fecUBx3HRUpOxzbbyM+LZjTPm1r5yR19VSh/wD4V7cLMH8aH9IzO4Hysm3j8odh4+Psx6nhvBYjFGTBHZRSS8rhjYuyAKF868MSnBasnmOJ8QOYdpDHyjCimZtNH0mPXmRvt3h1xlnvm8v9U366bGMFU/yhTu8qbv7jumtgOu+22Ns983l/qm/XTYPK3ggETh3mh2dp/Z4tP/Nl2k9oDMP+WMA8HhDzxKeWsFvUveb7FOOyy6o2c+lLMzHw7i6v3x92I7uN3JVgM4c2mTL/AIEcs3tAkcfZGmEqjbDjKgmcDxy5Ues5Xl7z9uF+TgV9WqRUpSw1atyBYA0g8/5vBFZ2KIdm7doFIKgJ3rYHVfIV08evTazOHOI4ZHkUPG5CLGSRqcblgRuuhSdx1cDleAMrl2kdUWtTGhfIeJJ6ADc+QODp3ikYjWVhhULGAAXffchSQNTElyegrwGD7EXc1y8qSRyxwx9m5Wx3i7Oq950sjbYBqA30EG7GDMhwaQ5cFe4sq6pJK3K33Y0sgAEDUxJA7ygnaipny7QuHjYkBUlV6ogE0uoWaOrarIPtx6TiOay2ZhgDhohopCHpFZfTQhgVUjYgkC1Yd4VviptYOlMPICODwKFvRT+iXzKgkXpv5OIqBe1liL642yvBCrOIrcejNCXR9QHMKyVTr9HUqG6onkSTk+4EHa00SxOfioltVawUZWZQa29Ii9+dVnJBAuY7V+0MrMOziDBHJ2VAQjFhyALMU67HljHU+5rpXYVQ5b4u2Y7TvRpcZU7CVjvGPEUB2liiK2545kJ431xxRdlJIhCPrLknqg1ABda2t87IF0Tgnj2Z+OZvs4yoXUQG3pmrvua3PogDyUYXZzhZjXWkqvSo50alZQ1FWpgDW43HIkXWOiur5MOztgG7ZOyChWD6iS2rYigANNev+TgfDDiYEgXMKK1mpAOkg3bbwYd8eth0wPDl1MbuZFBXTSnVbXzqhX2+7G07HNoIhl05fUOceYVh+UjH9MIxq6lHnRDRRu1j8tDbV+Q5P5I8MYRL/Rn2vVPEPckpP/cPfjWPfMIDydIkPj8pCqf/ACvEfJpGPGEHa61FLKBIo8NW5HscMvswFg6XvZWJvuHdPYwEi/brwDjVJljHjA/pGa7hb5WTffu/KHc1tv6O/j445DxzMooVZnCgUBfIYvxX5/N/KFflZO7Td/5Q7GthXpb+GFmJTgtWQrJoxWXTEHATvMQT2Ysd4b7Hp15nFs983l/qm/XTYxgCU+pmU6e6ALDGxs2+wrf2Y2z3zeX+qb9dNg872JwbcEgZjM6qT2cEpJAO1oyCz09I+7GE1dlHtXfl28DUfj7MH/BzO9mmaXTZky0gBuqoG+n4X2YBHzSlWrTMwvls6rRNXXzTeOHJeA3IofjEDqLAWJm5ABFAikLMTSikIs+PvGbh8Skr8ai2NCllI8rYJXuxtnddQ5RNzSaq21PIdagnqq9oAL5Escavw+FI+0ZZHj1aO1EiJrI9LsYypLKK5kj2YzJqCk2TbLQ6jRae0V0NqE2LU33T8q56Q3jgTheRWVu/KkaDnqZQx8kDHn5nYefLB2ZzQXMESEGCYLsNl7I7RlQfRaMDbqCpHU2mzEfZuyMRqRip9YNH7Ri0y0SqEz0EkBePMtrgA0RhVWVWCqrppW78BV9T68b/AAT4WZF0yqpgnYAd6mV9WhXUdN20E+YuwMecgzYVJU59oFF3y0sH9vKsPeB/CCGGJI9Dl9YLaQh1EOrDckEmhpAwVFmmHViAiT4HUaWfSCSKdO8KBbvaWqyATvXswSvwebLQu0ahpXtEkZgCBYRyiKTo2cAEkk6j6NEE7iXwpyqsyGKZmW+0Kdmq69Jjci9ydTC2PM35XpLxyKaRQLEbrqQsUQKoaMaTbekGjbVV87F3iZyMYPHcEgKZxEbYq7Ka35Bga8cEcVljiACMzs+XiSyulQmlCTzJLHSNtgLPPbAcvEFTNvMtOBK5G9Agkjn6jzxTP8RikAqHQwVVDdoWoKAB3a32FYrpfVIVSVMFuDHU/Ymys1KaBJB5o4A37p3P4JbFpeFCMlZZ4kcc1Akcj1lFI+3FO1EUAogPPqs9RGp0aR5M6tfiFA8cHZpEJRJI5JJkjAk0MFAABZQToYs4SlJ2GwG+I5ktoB87ltOWXQ6yKHd5Gj30khVjDA0yjunciu91xygM3GvVZIU/MCIftXGbHsSk0LFkfUAGAvatccgGxFMPIhgduhUqgZpWD9xnGYAN2FoT77VdWPYcPkfBhlcuzZWdgraUeFro1/xE58uTj3DCzDvhOd0ZLNR6bL9kCbqrY7AdfRvpz8sJMbWWYeEN+IoxmzpEQcCR9TEEmMdodxvtfLrhRhnxUJ2+b1MwPayaABYY9obDb7Ct8LMSnBashWT16ZdKqRo72rTYFjdL31XXLfFs983l/qm/XTYGj0U2rVdd2q9Kx6V9KvlvywTnvm8v9U366bB53sQvwNdUwT74skf56Mg/6iMZ5fvJIp095BItV9C72HI6NZ8evXA8ExRldeasGHrBsfowwzgEU7MikgN2gPQxuAygithTaSb61g8lWC+azBSaHNAWGEb1+FGFSRfevuYYLn0yZdIFki0RMzRO0gRlVzbLLGQWJvqt8trwFFIsReEoZo3KmNbq7rSy0CQ5U6duuxBqsT4rlyrOHnGk0yaEZhewOrWoq9rrY1YFi8QrGpCsvxCRpY4YJGWJAF1UB3VtpJCDekbsa8KHPGTcdnlmNTFFdyRdUoJsXseQOIMxAA0CnQrhflrLMT6WmQaRUdkAhRsVu2GFmbyrxtpcUasdQR0KsNmU+IxVSnwHU+4fmeMZhHZfjBaiRa1R9W2KJx7Mgg9sxo3vXTffbAmVybyBiiltC6mroNh/n+nEyeaMZJCqdSsveUNzBFixsd8Xpp7Iz1PuNDZMrQTRqk16lkdUZbOoghudHa1ux54ym4q0SpFBKdCA2wFBmJLMQCL07gDlyvrhTjpBHkaB94BB9xBw6VyOpjKbi2aQ00jg0DRAGxFjp4HFP9+Zn7832f6YDnnZzbsWNAWSTsBQ5+QxfO5UxlQWVtSq3dYNzANGuu+L009kOp9xtPxfMNBG6ytaFo35cyS6E7dQxX8jG+X4i5d5oZY1MqntEkZUIYimrVsylu8CDfTbqDl/6KCZRbuunsDyo73N1HiFFNdHbr1cplnbZ5EGnW1ASoooEjUSjbEhao70ATjELsblmGecERwo3aNqZmZbpnfSoCWASAEAvqSelYIzrBWl3BEUSQAjq2kI1ewS15DGaZqOJSYo5QWVgszkAg7BtAAKjY0SCW35jrjKuhUQqxC/KSAbUWoKCaOmlrpsXYYsGWy7qVyzXVtMq7VREaMTuux3lXfrhdg/iXdSGLqqa2/Gk79H1JowBjdJKhvxHX22d0hCvaPrLabA7U1ove7rl0woww4xo+MZnVq1drJoqqvtDeq96q+XXC/EpwKsmkTkBqIFrR5bixsL63R28DgjPfN5f6pv102A7wZnvm8v9U366bB5REB4ZX2kKsSQYSI5K5mNm1IasXpbUteaYXKpOw8CfcCT9gON8hmuzeyNSMCrr90p2YDwPUHoQDisI2i766FJ1xktGeRK2WK7fSHpivwx4YzyzHZogzOqs0lgMum99vuNJAa+pPljfORFDpaViEUNl2AsMC2oEGxo5k+TAjFJ0L6nUaXAPaoNvWyj7n7pfonflyhRlw7KRvl80ymlCBihbvIVDMOneSxs19aIvfAcWYpZNIEmWVh8nMV1DVta6SCrbGyu3iDgePcl4tMRjQGjIdTH0TosbsbvTyq8HNwtWRnnrLsoBKgWWBIW+xBBjJJHMgHwG5xG1yVS8Apy0T/Ny9mSKKTbeBoSqNJFgekFxSThE6i+yYjxQa1/OSxhhm83GdL9k000hGkzNqJUdwHs49IskaQLb0SeowZl8/PEWTLxh5R6ZiiUJGTtpUIvfboWYkbGhteM9VSx7l6UI8vwqVxdKpJ0qHYIzttsgbcnceW4HPFnhzM5BKTSEAKLVzQAobkbcvfh5FxWdfnpco8gNqZj2jxt10mMFV5A0TsRjicWzqoRMDmIaJLrpkAA2JVwCu3g4PmBidVXgvTT5En+7NPz0kcXlfaP+Yl1+UVxvl5wpIyy6WVSxllKh6A37Meih8Ktj0ON5XiDoJYonhkFrLGphbwtgh0gqdmUqa89r62UjmZg0rhoUC9nLoU0pChVmHcoFuZUc/biz33fJI7bvgtwfJpJDO6sVcR07O4q2sttXoEAbm2u6wskNqVjVjChUyNW7EmgW6KOYVenmScaZyCTvI4WERgMIydN33bS77VvwrO3I1tjIIJGJQdlGAuu2LAee+7MTZC+J8ASNeTJ2ALbSGzFGx0K30id1U1tdAFq6A+IxfIxiV7dmI70mY6DSp1GqPeLcuXpFcZzSq3VkVF+SWrvcWWO1E0SWHUAcgMEcSkZFMbEmaQh5yefiqHzF6m8yo+jgEAZvMGR2kbm7EnyvoPIcvZjLHdJonoCB77I/QccxtEGPF3IzGaAIAMsljbcdpYA9tHbwOF2DeNn+k5j66X/ALzgLGacFqyGcPHdzH1P72HEz3zeX+qb9dNicO9HMfUfvYcTPfN5f6pv102HP3/A43uM/gxmsqhfto2a0etw30GLUNIq1tfSNkjwsJs2yFiUBAs82B91ItDyrFsrlJHDsgsILbcA1R5AmzsDsOgOB8FTeQ6rQH5KdWXsZDpFkxyH/hsed/8Apt18D3vG9uwlaRtRkGaV9TOzAIqVu7vz8KbkRyuxhVhll+I6ovi8xbs7Gll3ZKurH00Fnu9LJWuRjXYJzkZ5TNZdXQoRG5YXM0ZCuAafshZ7DqLr2pywvzmTmWEsyktLLZZaZTQsHWtrRaQ9enlg9oHdIEzEwMAfREYqYyFj0Nd0Le5bcVVE4Gh4w8MWvLosNSFWAGpiNIZQzvZvutyr1Ywp4Nvyb5fJya55o0JEKusVEX3Ki1KOZ0qS1gVqrrgXLZs5eGMKoZ5C0i3Z0c4V0gHdj3+dj0dsNYuNOsuYbSGmjjkETk/8MuGNqNmIRi4Phd4UCORo4JolZjANLUC2goxkQsB9EhufLutgpeSuFgGbhEwIXRZLaaVkamAvS2liEagTTVsD4HBnD802VZVkRTGzagwYNVgxM0boxViFJFGxYGwx2CfUsjx5YaOcwMhIYGzSg0RRtgRbAgb1scUhbM6I4omWKO7Nlwuogu0j0ANl8BsuNOX/AGxvkwoX9chGU4VKyZmALq7JwVbYDWGEZAJPN0N1fNVxnlYWeWHusTJGY3ABJ+nAdQ5igqk31wbDxcMmc1xh4WkWRQSVOsuAgsb0VUkj8E4snHcw7QpI4KuC8ilVKkFnbkRt3ACKPXGZqvvBv+Nt5MYHEcKRZkqQC47AU8m+krpZT8i2otzN0R3TywNm4kNN3zllJBVAA8bEEAShiRqLADX1ogVsovw9FcxPCOxnLsEQW0blQpIGqyhOqhZI2O4x2XOmKR5XYSZh9QKCjGgPMSVs5/A5CrJJ2w5tu9ycbv2MY5GiVJJSWkCgQI2+heYdgeSgklV6nfkN1RazZs2bJvc+O56+eLTSs7FmJZmNknck4fZL4NalDtIrKUY90+iwXWAWIojxrljqkc2y2SzmUGTdWibtNS0dQJsiTT3tG1AP9E1rXf7nzrkXsCB5mz7wB+jHoo/glISKmjKkAhhqomym22+/I8jeKN8FJAFPaIQ3KtX3DSeH4BHuxKaYZW5MM+PlOIfjN+0JhNh1nvnOIfjN+0phLiUY3sWvIZw70cx9R+9hxq8BkGUjFAuhUXyszyjfy3xlw70cx9R+9hwbkvnMh+T+0S4PfQLfUtkAYhIsc+WbtF0m2dCNiNi6qPpdfAeGApeHzooYxkoLpgBIgvY95dSj/wAX0wIIyzaQLJNAY1kSTLyMLKSKSCVajt5jpi3JYzDIRuCKXbSbtr2LXyFbbeA88XkypAZlIZF0guOVsLAo0ehHLofLBJ4lr+fjWT8MUkn56im/KBx1MjZEmWfWUOrSQBKtb3o3DgUN1J8wMJ7iOwNks88V6DsfSUgMrfjKdj6+Y6EYYfGYJRLquF5O91eLWDYO3fQbsKphTeWARKkgtzoanZpO8/aMTagqNk6ixt44yzWWeNijqVYUSD5ixy8jhCbEtDgZKYBJ4gsjRUpMZEgYAUpIXetPcYEA0B4mu5eVogXy6K8YbWY3DF4WoqbCsCVokB9xVXTDCFTRBGxHIjYj1HDGHjuZSiJ325ajqr1arxl0sqqQz4TKhinEWXnKstSaKkCiiKVu6eRuiG8cDZDNsV0ZaJVRSWMsjFtBK6C7PaovdPLSfUTi8Hwmk7pkaQtG5dTGwjV7raVVXvDu8+dEjAsnwjzTAAzEAcgqooHqpdsSKn+zU0o3iyLTBYYVcwISzy6SAxqi1nYUO6ik9bPM1w9mrSPLItsulY4SJCo2Ugv6ApBpuzzJrCrM5l5PnHd/xmLe6ztjLGulmepDGfizaRHEvZIAV2NuwJLHXJVkEk7Ch5YBggZyQoulLEbbBRZPsGCfiojoyij3HWMg/KI25OtT3BQ9e+LRwSTLtSwxlqLmkj1HVWoi2PLbdvLFULBLvIM6KAe9ZKqRp5Andg1i7HLba/LHqsp8JWdRHDlGbSKpCWA7hj+5JVd73P8ArhB20EfoJ2zfdyAhPyYgbP5R/JxhmuISyDS7kr9yKVB6kWlHuwuLHs246wNusUdG6fMKT6evkisR4VW22LRcViESM8kWlQyrpaSyyoVNK0a3tKMeInyToqMwpXFruPEj/LG+Y/q0P1k36IcFlAMz3znEPxm/aUwlw6z3znEPxm/aUwlxKMb2LWGcO9HMfUfvYcG5L5zIfk/tEuAuHejmPqP3sODcl85kPyf2iXEq30C43kTycz6ziE3ueuI/M+s4a5TM5YZaRHjYyll0sGHgeXd2A36H0hv4bbgylIpAxvmctJC4DqyOKYcwR1BBxhjrMSbJs/6bD7BgBj26ZjaUhJekvJX8pgOR/wDUH5XjjJKjuCdSiqxZtKqZA2mgAT9Dka5dRjfhKQmKftNOvR8mDeq6Y93euYH2YplZBMqwuQGG0Uh6eEbn7g9D9EnwJqNQVOfqB5rLPG2hxTUDVg8xY3B8DjLBkS7NC40MpYrUdyNJsojJG4BPuOB1JRjaiwSCGUGiNiCGHO8VMgfkOEySRyOELDQChAuz2iKQK+lRO3PC6VCpKnmDRo3v13GPZ/B34UrFDIDGpKrrOhUjBtkjoADvGmuz5DlvjyuezesmljAvYpEke3S6G3vxil1NuUbqVKSaYJhgi/F9LMvy2zKrBHjKMp3O/pb7DGeU+TAlI3BBjV49SSblXsnal9u+L5SFY0E0ihrJ7KM8nI2LOPvanp9I7cgcaZlHMvlEjUSTXTC0iBpnH3TH6Efnzbp44q0kuZdEAs+iiKKVb6Ko5DxPPxJwblGSSHMyTMrS1alr13sLG9VZAquoGwoYTqxBBGxBsHwI3GEcieOCOhBIIII5giiPWMQj7eWODG82cdkSMm1S9I9eKQwv7P8A7/ST78HZj+rQ/WTfohwDg7Mf1aH6yb9EODyt4Cw95DM985xD8Zv2lMJcOs985xD8Zv2lMJcZoxvY1WGcO9HMfUfvYcG5L5zIfk/tEuAuHejmPqP3sODcl85kPyf2iXEq30C43kU6bahW56kAe0nYYtm4DG7ISCVYiwQRsa2IOM35n1nGuUyzSuEStTGhZA+042ZMRjfOxor1G5daG5Fb0Cdr8cbcY4a2XlaN6sHYgg2Onq2wFgnN0HazN8lmmicOtWL9IBhuK5EYwO/8/wCWGeU4HJJA866dKEc2HnfXbpz8ThZgmm7BprIylYzR9oD8rEAHPVk2CPfPUppSfDQfHAuYAZVkAA+i3f1MzAamcg7gG/VYOJkswYpAxFgbMp+krCmU+tT9oONcxAIpHj1LoItZGXUdNdpGVIFgsKBI8SDteJhwXIPCjEOVqgvesgbal5AnfethjkEJdgoKgsatiFUesnYYvlpKWQXVqBzUX3lPUEnldAg7c6sGsbgK26knu6StkA76lPJSCAPHc+eKQKy6LK5JDRwRjUy6i2ldrCk/SdjQ828sD53NGVy5AHIBRyVRsqr5Af69cFZlSkccCgl3qSQDc2R8ktc9kOqvF/LAM8LIxVgQymiD0IxEVjLhXGjDHLH2aN2i1ZUE8x7xV8+tYVE4I+Jt2Xa7aNWnmLur5XeB8Eldojb5CM1HGoTQ5YlbYFa0mztz32xlCV1DUCVvcA0ffR/RimNGgYKHKkKSQDWxqro+3FAf8IJcu0gOXVlXSt2b+iOlbGqB35g4yzH9Wh+sm/RDgHB2Y/q0P1k36IcSIhbgszO8hme+c4h+M37SmEuHWe+c4h+M37SmEuJRjexawzh3o5j6j97DjSaYouUdfSVCw9YnlIxnw70cx9R+9hwU2VZ4oCrRD5J178kaneWWwA5vkw389jg/z+BvuaZLLx5kSEosJRS5eMsRW5NxG9qG5Vh02NgYW5vKNERZFMLV1Nqw8Vb+SOtYYwTSRa4WTs5JESNaCBTzUtIzXzVz31NYHyUgBbLykaGYjVdiNx3Q6nwvZq5r6hhMYJnIDPKzsWY2SSSfXvjTMRIFQq+ostsNJGk2RV9dgP5OM54mRmRhTKSCPAjY4pjRDRZmClQTpJBI9Vj/ADOMwa3xvmMqUVGJU611ABgSNyu4B29HGGAN85m3lbW5tqA9wrBMzloYpAe/ExjJ6185Ef8AvH5IwNm1jGns2Zu6C2pQtNW4FMdv53wRw7vR5hP/AExIPWjC/wDpZsR4KTL5NnWd0PdRbbUdLEE6r0iweV7muVE4rkIu0kijYnQDqaxQVfTk078tC3e3+eKw8QkRHRT3ZBTWAboFdiRYFGsa5A0mYffaLQL599lT/s1DB4IsguazTSSNKdmZi23S+QHq5ezGcshYlmJJJsk9ScVxvmHjITQrAhe+SwIJ1MbA0itiP53NwDC+mGHARD26dvejUOXj0vyvC/BGbyhj0WVOtQ3dYNV9DR2ODvYLuczvZ627LVovu6udYqZnZVTUxUHurZO5obDx2GMsMcu3YRiUfOyWIz9wo7rOPwibVT0pjzrB2GQuHgqpHJJKQ7R1qhVqK3t8o9Gjv6I357g2MLM3nS4VQiIiElVQH6VWSWJJPdG5PTBOXzBiy7qx7kytpClCQylRb33lWvDc7YtNw+ViSVii16SELRxnYUNKu2pbu+l36qllkt+DbPfOcQ/Gb9pTCXDnONb8QI5FjX/5KYTYlGN7FrDeHejmPqP3sON+FcGMySuHjXQmoBpFBvUo7wJ7q6b3Nb1h38N+CvwziMqshMEpdk6B4pL1KD0ZSa8iqnkRhD8RHe7KeIqwqndYnqw1Mr0LtRyJG2DkK5yHvQSxtR7KnQ2CFt1RwCPotrBrla344DzEgbT6GyhaUaeW3e2osQLJ3u8MspDLFq0TZcagA1y5dgaNjZiRz3xt2uY+/ZT35P8A0wn6CH5BcxmMvKQ7tMHKqH0qhBKqFJBLg71fLneM6yv3c/5kf8TB3a5j79lPfk/9MTtcx9+ynvyf+mJ9/f4LHj2+QGsr93P+ZH/ExKyv3c/5kf8AEwd2uY+/ZT35P/TGOZzs6VcmXa/uFyr+8KprC/f3+BCX6+Qesr93P+ZH/ExpBPl01lWmJaORKKRgd5SosiQmgSD7MROJzE1qi5E7x5cDlqq9HPpXO9ueLf7xm0q2qHvMVrs4LFVuw0bDfn5HFh6/gkrf2KrwdkcxEI5EkLjW0ZtArejr2OphzLg+zBbZqcGUa4Pkufcy9Nvp+TPZ97njgzk9xjXB8ry7mXpd9PfOju8uvTBtvfgKEDVlfu5/zI/4mJWV+7n/ADI/4mNP96TUTqi2IFdlBZu9wNG425+Y8cSPicxYLqiF1uY8uBvvuxSh7cIe/oSt/ZnWV+7n/Mj/AImJWV+7n/Mj/iYO7XMffsp78n/pidrmPv2U9+T/ANMSfPv8Fjx7fIDWV+7n/wDbj/iYy4lmVke1sIqqiA1YVVC711Js+snDPtcx9+ynvyf+mJ2uY+/ZT35P/TCfp6/AjY+QfJSjtJZqQmKPUmlaXUCkSMFI6ate45izjvDuDtPHNL2kYKrq78igklhZezYFatzzNY2d5yrKZsrTCmp8otjnVrR6DAicPYWO2gAYUfl4jtYbcBieag+zD7oR4K5NaizPlGg23Hz0XUYAvDGV1VOwiJkZ2XWyg94jZEjUjURZu6BJrbbf718Ev9l2VTJwrmoVafTch2NFiW0310ghfZjSMs8B8If9seXz0XY5nhSyJzH9JIZT4owhtT6sfMs5nYi1xRui+DyLIfzljT9GF+PsH+x/4OQywLNLl1LiYvHNcjNcTQkDYBI1BbkxLPqNABcUHyj415fbifGvL7cffM/8D8l2U2YlyUZkUTSbtMQ9pJMC7WoJJUNpX0AdNnfF1+AfD3a1yS7ZrsyFMhGhZpkJPe2sKLPkOWAPgHxry+3E+NeX24wkFE+vFcANclxZUSVTEH7RaBJFqd9xak9QdiOWA/jXl9uBsTAQE/GvL7cT415fbgbEwAT8a8vtxPjXl9uBsTABPxry+3E+NeX24GxMANcpxdUjkQxBi42YkWvmO6T7iMB/GvL7cDYmACfjXl9uJ8a8vtwVwXKSNqZcq+YWtPdViAdiLKjn5bXhlJkSNAHDpVctfe7TcLTMBY32Bvba8AI/jXl9uIM34r9v/jD+Ph8yuzHhkjAkbaWKjYjYqm92DtttiZeCSQIU4YzAgG0RyG5HqpoEeHiPaA1+B/w4yXD2Eq8NaaYcpZcyCV/EUQBV9fPzx7P/AP0Gf7u//Y//AI4+H4mAJgzKcUniXTFNLGt3pR2UXyugauhV4mJgDRuOZojSczMQRVGR6rfar5d4+8+OG3wd+HWbybO6sJWbkZi8mk2WJUawLLGzd7gHExMAeZxMTEwBMTExMATExMTAExMTEwBMTExMATExMTAG+WzskdiOR0BIJ0sVsqbUmjuQdx4Y2/3vmPv8u2r/AIj/AEjbdep3PjiYmALx8czIIYTy2OVux+wnp08OeKDi+YGwnl/9xv8AXExMABYmJiYA/9k='); /* Arka yüz resmini burada belirtiyoruz */
            background-size: cover;
        }

        .card img {
            display: none; /* Kartın ön yüzünü başlangıçta gizle */
        }

        .card:hover {
            transform: scale(1.1);
        }

        .selected-cards {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        .selected-card {
            width: 100px;
            height: 150px;
            margin: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
            background-color: white;
        }

        .selected-card img {
            width: 100%;
            height: 100%;
            border-radius: 4px;
        }

        .textbox-container {
            margin-top: 20px;
        }

        .textbox-container textarea {
            width: 100%;
            height: 150px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
    </style>
    <script>
        var cardMeanings = {
            1: "Kılıç Kralı anlamı: Zeka, Analiz, Liderlik.",
            2: "Kupaların Yedilisi anlamı: Hayaller, Seçenekler, Kafa Karışıklığı.",
            3: "İmparatoriçe anlamı: Annelik, Bereket, Yaratıcılık.",
            4: "Asaların Yedilisi anlamı: Mücadele, Savunma, Kararlılık.",
            5: "Kupaların Onlusu anlamı: Mutluluk, Aile, Huzur.",
            6: "Savaş Arabası anlamı: İrade, Zafer, Kontrol.",
            7: "Büyücü anlamı: Güç, Beceriklilik, Yaratıcılık.",
            8: "Tılsım Kraliçesi anlamı: Pratiklik, Güven, Refah.",
            9: "Tılsım Ası anlamı: Yeni Başlangıçlar, Fırsatlar, Bolluk.",
            10: "Tılsım Şövalyesi anlamı: Sorumluluk, Kararlılık, Sabır.",
            11: "Asaların Uşağı anlamı: Macera, Keşif, Tutku.",
            12: "Kılıç Kralı anlamı: Zeka, Analiz, Liderlik.",
            13: "Kupaların Yedilisi anlamı: Hayaller, Seçenekler, Kafa Karışıklığı.",
            14: "Büyücü anlamı: Güç, Beceriklilik, Yaratıcılık.",
            15: "Kupaların Onlusu anlamı: Mutluluk, Aile, Huzur.",
            16: "Savaş Arabası anlamı: İrade, Zafer, Kontrol.",
            17: "İmparatoriçe anlamı: Annelik, Bereket, Yaratıcılık.",
            18: "Asaların Yedilisi anlamı: Mücadele, Savunma, Kararlılık."
        };

        function selectCard(cardId, imgSrc) {
            var selectedCards = document.getElementById("selectedCards");
            var selectedCardImages = selectedCards.getElementsByTagName("img").length;

            if (selectedCardImages < 6) {
                var newCard = document.createElement("div");
                newCard.className = "selected-card";
                newCard.innerHTML = '<img src="' + imgSrc + '" alt="Selected Card ' + cardId + '" />';
                selectedCards.appendChild(newCard);

                var hiddenField = document.getElementById("HiddenFieldSelectedCards");
                hiddenField.value += imgSrc + ",";

                // Kartın anlamını textarea'ya ekleyelim
                var textarea = document.getElementById("<%= textarea1.ClientID %>");
                textarea.value += cardMeanings[cardId] + "\n";

                // Scroll the selected cards container to the bottom
                selectedCards.scrollTop = selectedCards.scrollHeight;
            }
        }

        // Scroll the selected cards container to the bottom when the page is loaded
        window.onload = function () {
            var selectedCards = document.getElementById("selectedCards");
            selectedCards.scrollTop = selectedCards.scrollHeight;
        };
    </script>
</head>
<body>
    <div class="container">
        <h2>Tarot Falı Formu</h2>
        <form id="form1" runat="server">
            <div class="cards">
                <div class="card" onclick="selectCard(1, 'https://www.elle.com.tr/Content/Images/Tarot/kılıc-kralı.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/kılıc-kralı.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/kılıc-kralı.jpg" alt="Card 1" />
                </div>
                <div class="card" onclick="selectCard(2, 'https://www.elle.com.tr/Content/Images/Tarot/kupaların-yedilisi.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/kupaların-yedilisi.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/kupaların-yedilisi.jpg" alt="Card 2" />
                </div>
                <div class="card" onclick="selectCard(3, 'https://www.elle.com.tr/Content/Images/Tarot/imparatorice.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/imparatorice.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/imparatorice.jpg" alt="Card 3" />
                </div>
                <div class="card" onclick="selectCard(4, 'https://www.elle.com.tr/Content/Images/Tarot/asaların-yedilisi.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/asaların-yedilisi.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/asaların-yedilisi.jpg" alt="Card 4" />
                </div>
                <div class="card" onclick="selectCard(5, 'https://www.elle.com.tr/Content/Images/Tarot/kupaların-onlusu.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/kupaların-onlusu.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/kupaların-onlusu.jpg" alt="Card 5" />
                </div>
                <div class="card" onclick="selectCard(6, 'https://www.elle.com.tr/Content/Images/Tarot/savaş%20arabası.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/savaş%20arabası.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/savaş%20arabası.jpg" alt="Card 6" />
                </div>
                <div class="card" onclick="selectCard(7, 'https://www.elle.com.tr/Content/Images/Tarot/buyucu.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/buyucu.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/buyucu.jpg" alt="Card 7" />
                </div>
                <div class="card" onclick="selectCard(8, 'https://www.elle.com.tr/Content/Images/Tarot/tılsım-kralicesi.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/tılsım-kralicesi.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/tılsım-kralicesi.jpg" alt="Card 8" />
                </div>
                <div class="card" onclick="selectCard(9, 'https://www.elle.com.tr/Content/Images/Tarot/tılsım-ası.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/tılsım-ası.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/tılsım-ası.jpg" alt="Card 9" />
                </div>
                <div class="card" onclick="selectCard(10, 'https://www.elle.com.tr/Content/Images/Tarot/tılsım-sovalyesi.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/tılsım-sovalyesi.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/tılsım-sovalyesi.jpg" alt="Card 10" />
                </div>
                <div class="card" onclick="selectCard(11, 'https://www.elle.com.tr/Content/Images/Tarot/asaların-usagı.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/asaların-usagı.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/asaların-usagı.jpg" alt="Card 11" />
                </div>
                <div class="card" onclick="selectCard(12, 'https://www.elle.com.tr/Content/Images/Tarot/kılıc-kralı.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/kılıc-kralı.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/kılıc-kralı.jpg" alt="Card 12" />
                </div>
                <div class="card" onclick="selectCard(13, 'https://www.elle.com.tr/Content/Images/Tarot/kupaların-yedilisi.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/kupaların-yedilisi.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/kupaların-yedilisi.jpg" alt="Card 13" />
                </div>
                <div class="card" onclick="selectCard(14, 'https://www.elle.com.tr/Content/Images/Tarot/buyucu.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/buyucu.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/buyucu.jpg" alt="Card 14" />
                </div>
                <div class="card" onclick="selectCard(15, 'https://www.elle.com.tr/Content/Images/Tarot/kupaların-onlusu.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/kupaların-onlusu.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/kupaların-onlusu.jpg" alt="Card 15" />
                </div>
                <div class="card" onclick="selectCard(16, 'https://www.elle.com.tr/Content/Images/Tarot/savaş%20arabası.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/savaş%20arabası.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/savaş%20arabası.jpg" alt="Card 16" />
                </div>
                <div class="card" onclick="selectCard(17, 'https://www.elle.com.tr/Content/Images/Tarot/imparatorice.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/imparatorice.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/imparatorice.jpg" alt="Card 17" />
                </div>
                <div class="card" onclick="selectCard(18, 'https://www.elle.com.tr/Content/Images/Tarot/asaların-yedilisi.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/asaların-yedilisi.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/asaların-yedilisi.jpg" alt="Card 18" />
                </div>
            </div>
            <div id="selectedCards" class="selected-cards">
                <%-- C# kodu ile seçilen kartları göstereceğiz --%>
                <asp:Panel ID="selectedCardsContainer" runat="server" CssClass="selected-cards"></asp:Panel>
            </div>
            <asp:HiddenField ID="HiddenFieldSelectedCards" runat="server" />
            <div class="textbox-container">
                <textarea id="textarea1" runat="server"></textarea>
            </div>
        </form>
    </div>
</body>
</html>
