import MoviesContract from 0x01

transaction(Title: String, Director: String, ReleaseYear: Int) {

  prepare(signer: AuthAccount) {}

  execute {
   MoviesContract.addMovie(Title: Title, Director: Director, ReleaseYear: ReleaseYear)
    log("Movie added")
  }
}
