describe "the signin process", :type => :feature do
  it "upload file" do
    visit '/importer/form'
    attach_file('csv', '/data/got_characters.csv')
    click_button 'Sign in'
    expect(page).to have_content 'Success'
  end
end
