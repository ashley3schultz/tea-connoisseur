
#User.destroy_all
  User.create([
    {email: "user1@email.com", username: "user1", password: "password1"},
    {email: "user2@email.com", username: "user2", password: "password2"},
    {email: "user3@email.com", username: "user3", password: "password3"},
    {email: "user4@email.com", username: "user4", password: "password4"},
    {email: "user5@email.com", username: "user5", password: "password5"},
    {email: "user6@email.com", username: "user6", password: "password6"}])
#Tea.destroy_all
Tea.create([
    {name: "Amaranth Star", oxidation: "White", details: "White tea star combined with a single red Amaranth.", user_id: 1},
    {name: "Blossoming Jewels", oxidation: "White", details: "Our selection of hand produced blossoming tea created by Chinese artisans.", user_id: 1},
    {name: "Elder White", aka:  "Ye Sheng Ya Bao", oxidation: "White", details: "The precious lateral buds of wild PuErh trees picked in late winter.", user_id: 1},
    {name: "Silver Needle", aka:  "Bai Hao Yin Zhen", oxidation: "White", details: "Very early spring picked silver beige buds producing a luscious, thick and soft liquor.", user_id: 1},
    {name: "White Peony", aka:  "Bai Mu Dan", oxidation: "White", details: "Fluffy blend of buds and leaves for a richer flavour.", user_id: 1},
    {name: "Dragon Pearl Jasmine", aka:  "Mo Li Long Zhu", oxidation: "Green", details: "Hand rolled five times infused jasmine Green tea.", user_id: 2},
    {name: "Yabukita Sencha", oxidation: "Green", details: "Early spring picked Japanese steamed tea. Bright lime liquor which is thick and brothy.", user_id: 2},
    {name: "Houjicha", oxidation: "Green", details: "Porcelain roasted blend of three pickings of Bancha Green tea.", user_id: 2},
    {name: "Dragonwell", aka:  "Long Jing", oxidation: "Green", details: "Pre Qing Ming harvest of one of China’s most famous teas.", user_id: 2},
    {name: "Temple Blossom", aka:  "Jingshan", oxidation: "Green", details: "Tang Dynasty temple tea closely associated with Buddhist monks which inspired Japanese tea culture.", user_id: 2},
    {name: "Iron Goddess", aka:  "Tie Guan Yin", oxidation: "Oolong", details: "Dark, 25 year aged Tie Guan Yin made in 1992 and stored immaculately.", user_id: 3},
    {name: "Alishan Creaam", aka:  "Alishan Jin Xuan", oxidation: "Oolong", details: "A rich and luxurious tea made from the naturally milky Jin Xuan cultivar.", user_id: 3},
    {name: "Amber Gaba Oolong", oxidation: "Oolong", details: "Oolong processed in nitrogen to increase GABA to 200mg per 100g.", user_id: 3},
    {name: "Lost Robe", aka:  "Bei Dou Yi Hao", oxidation: "Oolong", details: "Cultivar developed from cuttings of the original Da Hong Pao mother plants.", user_id: 3},
    {name: "Eastern Beauty", aka:  "Bai Hao Wulong", oxidation: "Oolong", details: "Terpene rich leafhopper bitten Oolong.", user_id: 3},
    {name: "Yunnan Black", aka:  "Chen Hong Cha", oxidation: "Black", details: "Bright, brisk, black tea balanced by warming dry hay notes and a whisper of grape.", user_id: 4},
    {name: "Ruby Black", aka:  "Sun Moon Lake", oxidation: "Black", details: "Captivating Black tea unlike any other tea available.", user_id: 4},
    {name: "Gleaming Brow", aka:  "Jin Jun Mei", oxidation: "Black", details: "Highest grade Wuyi tea picked only a few days per year.", user_id: 4},
    {name: "Keemun", aka: "Qimen Hao Ya", oxidation: "Black", details: "Top shelf, hand-rolled Keemun Black. Malted milk, caramel, fermented apricots, cedar wood and rose.", user_id: 4},
    {name: "Little Tong Mu", aka:  "Tong Mu Zhengshan Xiaozhong", oxidation: "Black", details: "Unsmoked Lapsang from the famed Tong Mu village.", user_id: 4},
    {name: "Young Gushu", aka:  "Bing Dao 600 Year Old Gushu Raw", oxidation: "Puerh", details: "Bright and gentle PuErh made from ancient tree leaves picked and blended from the East and West sides of Bingdao.", user_id: 5},
    {name: "Purple Bud", aka:  "Ye Sheng Zi Ya", oxidation: "Puerh", details: "Made from buds of the Purple trees in Yunnan.", user_id: 5},
    {name: "King Plum", aka:  "Yiwu 800 Year Old Gushu PuErh Raw", oxidation: "Puerh", details: "Over twelve year Kunming aged Gushu from the legendary Yiwu mountains.", user_id: 5},
    {name: "Black Yunnan Tuo", aka:  "Fengqing Shu Tuo", oxidation: "Puerh", details: "Ripe PuErh aged since 1998 in Yunnan.", user_id: 5},
    {name: "Fire Phoenix", aka:  "Shu PuErh", oxidation: "Puerh", details: "Ripe PuErh made from buds and baby leaves and aged since 2008.", user_id: 5},
    {name: "Amber Mountain", aka:  "Huo Shan Huang Ya", oxidation: "Yellow", details: "Smooth and elegant tea made in small batches.", user_id: 6},
    {name: "Diamond Peak", aka:  "Junshan Yinzhen", oxidation: "Yellow", details: "Fragrant Yellow tea which is highly prized in China.", user_id: 6}])
