import app from 'commander';
import pageLoader from './';

export default () => {
  app
    .version('0.0.1')
    .arguments('<url>')
    .description('Download page to a current directory')
    .option('-o, --output [dir]', 'Output directory')
    .action((url) => {
      console.log(pageLoader(url, app.output));
    })
    .parse(process.argv);
};