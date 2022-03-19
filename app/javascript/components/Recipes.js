import React from "react"
import {
  InstantSearch,
  Hits,
  SearchBox,
  Highlight,
  ClearRefinements,
  Configure,
} from 'react-instantsearch-dom';
import { instantMeiliSearch } from '@meilisearch/instant-meilisearch';
import PropTypes from 'prop-types';

const searchClient = instantMeiliSearch(
  "http://127.0.0.1:7700", // Your MeiliSearch host
  "pennylane-test22" // Your MeiliSearch API key, if you have set one
);

const Recipes = () => (
  <InstantSearch
    indexName="PennyLane_recipes" // Change your index name here
    searchClient={searchClient}
  >
    <SearchBox />
    <div><Hits hitComponent={Hit} /></div>
  </InstantSearch>
);

//const Hit = ({ hit }) => <Highlight attribute="title" hit={hit} />
function Hit(props) {
  return (
    <div>
      <div className="hit-image"><img src={props.hit.image} align="left" alt={props.hit.name} /></div>
      <div className="hit-name">
        <span>Title:</span> <Highlight attribute="title" hit={props.hit} />
      </div>
      <div className="hit-description">
        <span>Category:</span> <Highlight attribute="category" hit={props.hit} />
      </div>
      <div className="hit-author">
        <span>Author:</span> <Highlight attribute="author" hit={props.hit} />
      </div>
      <div className="hit-ingredients">
        <span>Ingredients:</span> <Highlight attribute="ingredients" hit={props.hit} />
      </div>      
    </div>
  );
}
export default Recipes