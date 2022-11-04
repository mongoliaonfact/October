# @author: bbaasan
# date: 11/3/2022
# bbaasan@gmu.edu

import os
os.chdir('C:\\Users\\15712\\Desktop\\NewSmartCityDataProject\\R_projects\\OctoberR\\edited')

from pandas import DataFrame as data, read_csv

print('Wait until the data frame is being created ... ')
def create_clipped_or_not_tbl():

    clipped = []
    raw = []
    dates = []

    for file in os.listdir():
        if file.endswith('clipped.csv'):
            dates.append(f'Oct{file[2:4]}')
            df = read_csv(file)
            clipped.append(df.shape[0])
        else:
            df = read_csv(file)
            raw.append(df.shape[0])
    df = data({'dates': dates, 'raw':raw, 'clipped': clipped})
    df['difference'] = df['raw'] - df['clipped']
    df['ratio'] = df['difference'] / df['raw']
    return df

df = create_clipped_or_not_tbl()
print('Almost done in creating a data frame')
df.to_csv("C:\\Users\\15712\\Desktop\\NewSmartCityDataProject\\R_projects\\OctoberR\\codes\\oct_differences.csv",
          index = False)
print('Thank you for waiting and your data frame is created.')