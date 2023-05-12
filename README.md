# SwiftStudentChallenge2023

**[Gallery of What We See]**

여러분은 특정 색이 왜 그런 색이며 어떤 의미를 가지는지 고민해본 적이 있나요? 색의 의미는 시간과 장소, 문화에 따라 의미가 바뀌어왔습니다.
기원전 동굴 벽화는 주변에서 구할 수 있는 숯과 황토를 활용하여 그려졌고, 청동기 시대 이집트에서 만들어진 인류최초의 인공 안료 이집션 블루는 수 천년 간 사용돼온 값진 색이였죠.
하지만 AI가 그림을 그리기 시작한 지금, 디지털 세상이 이해하는 세상의 색은 평면의 화면 속에 RGB의 차이로 인식하죠. 
과거 새로운 색을 찾고, 재료를 통해 다양한 감정을 표현했던 예술 부터, 우리 주변에 존재하는 건축물 재료에서 발견할 수 있는 색, 그리고 디지털 세상의 색을 들여다보는 과정을 통해서 우리 세상에 실존하는 것들에 대한 소중함을 잃지 않았으면 합니다.

'Gallery of What We See' 프로젝트는 미술과 건축에서 사용되는 색과 재료의 흥미로운 이야기를 통해서, 우리를 둘러싼 사물에 대한 인식과 중요성을 강조하고자 시작된 교육 앱 프로젝트 입니다.
물체의 색은 RGB 값의 차이의 결과일 뿐만 아니라 질감, 깊이, 반사, 빛 등의 요소에 의해 영향을 받습니다. 이러한 복잡성을 이해하고 존중하는 것이 필수적입니다.
비록 컬러 매칭 체험도 디지털 평면에서 이뤄지지만, 사용자가 작품에 사용된 색깔을 똑같이 맞추어보고 그 색에 대한 흥미로운 이야기를 전달하는 방식으로 이 메시지를 전달하고 싶었습니다.
궁극적으로, 이 프로젝트는 이러한 접근 방식을 통해 우리를 둘러싼 사물에 대한 관심과 감상을 높이는 것을 목표로 합니다.

![Simulator Screenshot - iPad Pro (12 9-inch) (6th generation) - 2023-05-12 at 16 13 08](https://github.com/OreobrO/SwiftStudentChallenge2023/assets/120009346/60391cbe-814d-430d-adbf-3a19f3a3f3b4)
![Simulator Screenshot - iPad Pro (12 9-inch) (6th generation) - 2023-05-12 at 16 13 20](https://github.com/OreobrO/SwiftStudentChallenge2023/assets/120009346/5aaf04c4-7f99-4e8c-9410-f0af717751c8)
![Simulator Screenshot - iPad Pro (12 9-inch) (6th generation) - 2023-05-12 at 16 13 28](https://github.com/OreobrO/SwiftStudentChallenge2023/assets/120009346/c5978481-e7f3-4c75-86f9-653c812d9655)
![Simulator Screenshot - iPad Pro (12 9-inch) (6th generation) - 2023-05-12 at 16 13 32](https://github.com/OreobrO/SwiftStudentChallenge2023/assets/120009346/c98184ee-1657-4d00-b9c6-976ff8527359)
![Simulator Screenshot - iPad Pro (12 9-inch) (6th generation) - 2023-05-12 at 16 13 53](https://github.com/OreobrO/SwiftStudentChallenge2023/assets/120009346/497ab64c-e4e3-4f98-83fa-67ae83c60cfc)
![Simulator Screenshot - iPad Pro (12 9-inch) (6th generation) - 2023-05-12 at 16 13 55](https://github.com/OreobrO/SwiftStudentChallenge2023/assets/120009346/675ccea0-921e-4b50-a373-023687b93fbc)


**[Features]**

The 'Gallery of What We See' project is an initiative aimed at emphasizing the importance of color and materials through the history of art and architecture, and raising awareness and appreciation for the objects that surround us. In today's digital world, it is easy to select the colors and textures we desire, but the significance of the materials and colors used in past art pieces is often overlooked. The project seeks to understand the changes in color and materials used in art and architecture throughout history, and the socio-cultural context in which they were employed. The color of an object is not merely the result of the difference in RGB values; it is influenced by the texture, depth, reflection, and light, among other factors. It is essential to comprehend and respect this complexity. Although the experience of matching colors also takes place on a digital plane, I wanted to convey this message by engaging the user's interest and delivering a story. Ultimately, the project aims to increase interest and appreciation for the objects that surround us through this approach. 


**[Technology] **

I developed a Color Picker and a scoring system for my project. The Color Picker allows users to select a desired color by setting the start location and adjusting the saturation based on the distance. The Hue is determined by the angle from the start location. However, the Brightness cannot be adjusted directly by the user, so I used the preset HSB value of the color and input it as a variable in the Color Picker. As for the scoring system, users input Hue, Saturation, and Brightness values obtained through the Color Picker. I compared these values with the preset RGB values of famous artworks or buildings and calculated the score based on the difference between the two. Fortunately, the Playground app allowed for a direct comparison of RGB and HSB values. The score is categorized into three levels: "Perfect", "Very good", and "Try again". The distance between two colors was calculated by taking the square root of the sum of the squared differences of their R, G, B.


**[After all...]**

I was so proud to have the opportunity to express my thoughts and interests in colors and materials that I've been passionate about while studying and working in architecture. I made a promise to myself to design good experiences for more people in the digital world. That's why I joined the Apple Developer Academy and this Swift Student Challenge made me grow the fastest.

As my first app, I poured a lot of effort and thought into it, and it was a valuable experience to be able to submit a completed project.

