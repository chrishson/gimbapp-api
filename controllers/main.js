const getTableData = (req, res, db) => {
  db.select('*').from('vocab')
    .then(items => {
      if(items.length){
        res.json(items)
      } else {
        res.json({dataExists: 'false'})
      }
    })
    .catch(err => res.status(400).json({dbError: 'db error'}))
};

const postTableData = (req, res, db) => {
  const { korean, english } = req.body;
  db('vocab').insert({korean, english})
    .returning('*')
    .then(item => {
      res.json(item)
    })
    .catch(err => res.status(400).json({dbError: 'db error'}))
};

const putTableData = (req, res, db) => {
  const { korean, english } = req.body;
  db('vocab').where({id}).update({korean, english})
    .returning('*')
    .then(item => {
      res.json(item)
    })
    .catch(err => res.status(400).json({dbError: 'db error'}))
};

const deleteTableData = (req, res, db) => {
  const { id } = req.body;
  db('vocab').where({id}).del()
    .then(() => {
      res.json({delete: 'true'})
    })
    .catch(err => res.status(400).json({dbError: 'db error'}))
};

module.exports = {
  getTableData,
  postTableData,
  putTableData,
  deleteTableData
};