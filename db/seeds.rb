require 'rest-client'
require 'json'

puts "🌱 Seeding spices..."

# Seed your database here
API_KEY = "506645bab34cd2a4042367f7587d92a2"
baseURL = "https://api.themoviedb.org/3"
base_image_Url = "https://image.tmdb.org/t/p/original/"
requests = {
    fetchNetflixOriginal: "/discover/tv?api_key=#{API_KEY}&with_network=213",
    fetchTrending: "/trending/all/week?api_key=#{API_KEY}&language=en-us",
    fetchTopRated: "/movie/top_rated?api_key=#{API_KEY}&language=en-US&page=1",
    fetchAction: "/discover/movie?api_key=#{API_KEY}&with_genres=28",
    fetchComedy: "/discover/movie?api_key=#{API_KEY}&with_genres=35",
    fetchHorror: "/discover/movie?api_key=#{API_KEY}&with_genres=27",
    fetchRomance: "/discover/movie?api_key=#{API_KEY}&with_genres=10749",
    fetchDocumentary: "/discover/movie?api_key=#{API_KEY}&with_genres=99",
}

requests.each do |key,value|
 response=RestClient.get "#{baseURL}#{value}"
 response_hash=JSON.parse(response)

    results=response_hash.map do |key2,value2|
    if(key2=="results")
        value2
    end
    end
 get_data=results[1]
 get_data.each do |mov|
    class_name_array=[NetflixOriginal,Trending,TopRated,Action,Comedy,Horror,Romance,Documentary]
    class_name_array.map do |c|
        if(c==Kernel.const_get(key.slice(5,16)))
        c.create(
        poster_path:mov["poster_path"],
        backdrop_path:mov["backdrop_path"],
        overview:mov["overview"],
        original_name:mov["original_name"],
        name:mov["name"],
        original_title:mov["original_title"],
        title:mov["title"]
        )
        end
    end
 end
end
 
puts "✅ Done seeding!"
