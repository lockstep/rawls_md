# frozen_string_literal: true
require 'rails_helper'

feature 'View Groups Spec' do
  context 'a group exist' do
    before { @group = create(:group, state: 'NY') }
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

  context 'many groups exist' do
    before do
      @state_1 = create(:group, state: 'State A')
      @state_2 = create(:group, state: 'State B')
      @country_1 = create(:group, country: 'Country A')
      @country_2 = create(:group, country: 'Country B')
    end
    context 'sort by state' do
      it 'should show deafult as state ASC' do
        visit '/'
        within :table do
          all_row = all('tbody tr')
          expect(all_row[0].all('td')[1].text).to eq @state_1.state
          expect(all_row[1].all('td')[1].text).to eq @state_2.state
          expect(all_row[2].all('td')[1].text).to eq @country_1.country
          expect(all_row[3].all('td')[1].text).to eq @country_2.country
        end
      end

      it 'clicks on state to sort as DESC' do
        visit '/'
        click_link 'State'
        within :table do
          all_row = all('tbody tr')
          expect(all_row[0].all('td')[1].text).to eq @state_2.state
          expect(all_row[1].all('td')[1].text).to eq @state_1.state
          expect(all_row[2].all('td')[1].text).to eq @country_1.country
          expect(all_row[3].all('td')[1].text).to eq @country_2.country
        end
      end
    end

    context 'sort by country' do
      it 'clicks on Country to sort as ASC' do
        visit '/'
        click_link 'Country'
        within :table do
          all_row = all('tbody tr')
          expect(all_row[0].all('td')[1].text).to eq @country_1.country
          expect(all_row[1].all('td')[1].text).to eq @country_2.country
          expect(all_row[2].all('td')[1].text).to eq @state_1.state
          expect(all_row[3].all('td')[1].text).to eq @state_2.state
        end
      end

      it 'clicks on Country twice to sort as DESC' do
        visit '/'
        click_link 'Country'
        click_link 'Country'
        within :table do
          all_row = all('tbody tr')
          expect(all_row[0].all('td')[1].text).to eq @country_2.country
          expect(all_row[1].all('td')[1].text).to eq @country_1.country
          expect(all_row[2].all('td')[1].text).to eq @state_1.state
          expect(all_row[3].all('td')[1].text).to eq @state_2.state
        end
      end
    end
  end
end
