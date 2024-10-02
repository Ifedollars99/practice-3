<router-link class="" to="/"></router-link> 
<router-view/>
<template>
  <div class="bg-gray-400 h-full" >
    <nav class=" bg-white p-2 max-w-[1200px] sm mx-auto rounded-xl shadow-lg flex flex-row">
      <i class="fa-solid fa-magnifying-glass text-xl xl:pt-1 md:pt-0"></i>
      <input type="text" class="pl-3 placeholder:text-xl placeholder:text-black xl:w-[75px] md:h-4 xl:h-8 border-none" placeholder="Search....." >
      <div class="text-right space-x-4 text-2xl md:pl-[500px] xl:pl-[900px] md:flex md:flex-row" >     
      <i class="fa-regular fa-address-book text-orange-400"></i>
      <i class="fa-solid fa-angle-down text-black"></i>
      <i class="fa-solid fa-road-lock text-orange-400"></i>
    </div>
    </nav>
    <div class=" text-white">
    <div class=" text-xl text-orange-600 pt-5 md:pl-20 pl-36 flex flex-row gap-8 md:gap-[300px] xl:gap-[1000px]">
      <h1 class="bg-white w-32 pl-2 h-9 flex items-center rounded-xl  hover:bg-orange-700 hover:text-white hover:animate-bounce" >Prickles&co.</h1>
      <h1 class="bg-white w-64 h-9 flex items-center rounded-xl hover:bg-orange-700 hover:text-white pl-2 hover:animate-bounce" >Contact Us: 08137628419</h1>
    </div>
  <div>
    <nav class="p-4">
      <div class="flex justify-start space-x-8 pl-2">
        <button
          v-for="(tab, index) in tabs"
          :key="index"
          :class="{
            'text-white border-b-2 border-orange-300': activeTab === index,
            'text-orange-300': activeTab !== index
          }"
          class="text-lg font-bold pb-2 transition duration-300"
          @click="setActiveTab(index)"
        >
          {{ tab }}
        </button>
      </div>
    </nav>

    <div class="m-8">
      <div v-if="activeTab === 0">
        <img src="./assets/prickles.png" class="w-full max-w-full h-[600px] rounded-lg ml-5 relative object-cover">
        <div class="absolute inset-0 pointer-events-none flex items-center justify-center text-white flex-col ">
          <i class="fa-brands fa-envira text-white text-8xl md:flex md:justify-center xl:text-7xl md:text-5xl md:mt-32 sm:mt-40"></i>
          <h1 class="text-7xl md:text-3xl mt-3" >   Prickles  &  co.</h1>
          <h1 class="text-4xl mt-3" >BRING NATURE INDOORS</h1>
          <button class="bg-orange-800 text-2xl h-11 w-48 rounded-lg  mt-9">Shop now</button>
  </div>
  <div class="mt-8 flex flex-row gap-10">
    <nav class="bg-white text-black w-[500px] h-32 ml-20 rounded-lg  hover:scale-95 hover:rotate-1">
      <h1 class="text-3xl text-orange-500 flex justify-center font-bold mt-4">Cacti</h1>
      <h1 class="text-2xl text-orange-500 flex justify-center font-bold mt-1"><i class="fa-solid fa-clover"></i></h1>
      <h1 class="text-3xl text-orange-500 flex justify-center font-bold mt-1">shop collection</h1>
     
    </nav>
    <nav class="bg-white text-black w-[500px] h-32 rounded-lg  hover:scale-95 hover:rotate-1 ">
      <h1 class="text-3xl text-orange-500 flex justify-center font-bold mt-4">Plants</h1>
      <h1 class="text-2xl text-orange-500 flex justify-center font-bold mt-1"><i class="fa-solid fa-clover"></i></h1>
      <h1 class="text-3xl text-orange-500 flex justify-center font-bold mt-1" >shop collection</h1>
    </nav>
    <nav class="bg-white text-black w-[500px] h-32 rounded-lg  hover:scale-95 hover:rotate-1">
      <h1 class="text-3xl text-orange-500 flex justify-center font-bold mt-4">Succulent</h1>
      <h1 class="text-2xl text-orange-500 flex justify-center font-bold mt-1"><i class="fa-solid fa-clover"></i></h1>
      <h1 class="text-3xl text-orange-500 flex justify-center font-bold mt-1">shop collection</h1>
    </nav>
  </div>
      </div>
      <div v-else-if="activeTab === 1">
        <div class="xl:grid xl:grid-cols-3 md:grid md:grid-cols-1 md:gap-3" >
          <img src="./assets/prickles2.png" class="block h-[600px] w-[564px] hover:scale-95 hover:animate-pulse rounded-lg ">
          <img src="./assets/prickles3.png" class="block h-[600px] w-[564px] hover:scale-95 hover:animate-pulse rounded-lg ">
          <img src="./assets/prickles4.png" class="block h-[600px] w-[564px] hover:scale-95 hover:animate-pulse rounded-lg ">
          <img src="./assets/prickles5.png" class="block h-[600px] w-[564px] hover:scale-95 hover:animate-pulse rounded-lg ">
          <img src="./assets/prickles6.png" class="block h-[600px] w-[564px] hover:scale-95 hover:animate-pulse rounded-lg ">
          <img src="./assets/prickles7.png" class="block h-[600px] w-[564px] hover:scale-95 hover:animate-pulse rounded-lg ">
          <img src="./assets/prickles8.png" class="block h-[600px] w-[564px] hover:scale-95 hover:animate-pulse rounded-lg ">
          <img src="./assets/prickles9.png" class="block h-[600px] w-[564px] hover:scale-95 hover:animate-pulse rounded-lg ">
        </div>
      </div>
      <div v-else-if="activeTab === 2">
        <div class="flex flex-col gap-5" >
        <h1 class="text-xl text-orange-300 font-bold">Input your name</h1>  <input type="text" placeholder="Name......" class="w-60 h-11 rounded-lg placeholder-black">
        <h1 class="text-xl text-orange-300 font-bold">Email</h1>  <input type="text" placeholder="email......" class="w-60 h-11 rounded-lg placeholder-black">
        <h1 class="text-xl text-orange-300 font-bold">Desciption</h1>  <input type="text" class="w-72 h-40 rounded-lg">
        </div>
        <h1 class="mt-96"><i class="fa-regular fa-copyright"></i> Copyright</h1>
      </div>
      <i class="fa-regular fa-copyright"></i>
    </div>
  </div>
  </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      tabs: ['About', 'Shop', 'Contact'],
      activeTab: 0,
    };
  },
  methods: {
    setActiveTab(index) {
      this.activeTab = index;
    },
  },
};

</script>

<style scoped>
nav {
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}
@keyframes appear {
  from{
    opacity: 0;
    clip-path: inset(100% 100% 0 0);
  }
  to{
    opacity: 1;
    clip-path: inset(0 0 0 0);
  }
}

.block {
  animation: appear linear;
  animation-timeline: view();
  animation-range: entry 0% cover 40%;
}
</style>
