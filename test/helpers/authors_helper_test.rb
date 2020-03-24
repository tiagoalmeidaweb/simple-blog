require 'test_helper'

class AuthorsHelperTest < ActionView::TestCase
  test "load author avatar from gravatar" do
    assert_equal "https://www.gravatar.com/avatar/1aedb8d9dc4751e229a335e371db8058?d=http://localhost:3000/avatar.png&s=300",
                 load_author_avatar("test@gmail.com", 300, "avatar.png", "http://localhost:3000/")

  end

  test "load author avatar from gravatar with uppercase email" do
    assert_equal "https://www.gravatar.com/avatar/1aedb8d9dc4751e229a335e371db8058?d=http://localhost:3000/avatar.png&s=300",
                 load_author_avatar("TEST@gmail.com", 300, "avatar.png", "http://localhost:3000/")

  end

end
