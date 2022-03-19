class Recipe < ApplicationRecord
    include MeiliSearch::Rails

    meilisearch index_uid: 'PennyLane_recipes' do
        # all attributes will be sent to MeiliSearch if block is left empty
        displayed_attributes ['id', 'title', 'ingredients', 'cuisine', 'category', 'author', 'image']
        searchable_attributes ['title', 'ingredients', 'category']
        filterable_attributes ['title']
    end
end
