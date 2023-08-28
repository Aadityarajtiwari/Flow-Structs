pub contract MoviesContract {
    pub var Movies: {String: Movie}

    pub struct Movie {
        pub let Title: String
        pub let Director: String
        pub let ReleaseYear: Int

        init(_Title: String, _Director: String, _ReleaseYear: Int) {
            self.Title = _Title
            self.Director = _Director
            self.ReleaseYear = _ReleaseYear
        }
    }

    pub fun addMovie(Title: String, Director: String, ReleaseYear: Int) {
        let newMovie = Movie(_Title: Title, _Director: Director, _ReleaseYear: ReleaseYear)
        self.Movies[Title] = newMovie
    }

    init() {
        self.Movies = {}
    }
}
