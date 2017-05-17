describe 'View Groups Spec' do
  context 'a group exist' do
    before { @group = create(:group) }
    it 'can see group name and state' do
      visit '/'
      expect(page).to have_content @group.name
    end

    it 'can click group name to see group info' do
      visit '/'
      click_on @group.name
      expect(page).to have_content @group.description
      expect(page).to have_content @group.website
      expect(page).to have_content @group.facebook_page
      expect(page).to have_content @group.state
    end

    context 'group is not in USA' do
      before { @group.update(country: 'French', state: '') }
      it 'can see country if group is not in USA' do
        visit '/'
        expect(page).to have_content @group.name
        expect(page).to have_content 'French'
      end
    end
  end
end
