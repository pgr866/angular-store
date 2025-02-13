# Dependencies
npm i -g npm@latest @angular/cli@18.2.12

# Create project
ng new angular-store --standalone --skip-tests # CSS, y
cd angular-store
npm i --save wavesurfer.js
npm i date-fns

# Install tailwindcss
npm i -D tailwindcss postcss autoprefixer
npx tailwindcss init
# Add "./src/**/*.{html,ts}", to content in tailwind.config.js
# Add @tailwind base;@tailwind components;@tailwind utilities; to styles.css

ng g c domains/products/pages/list
ng g c domains/products/components/product
ng g c domains/info/pages/about
ng g c domains/shared/components/counter
ng g c domains/info/components/wave-audio
ng g c domains/shared/components/header
ng g s domains/shared/services/cart
ng g s domains/shared/services/product
ng g p domains/shared/pipes/reverse
ng g p domains/shared/pipes/time-ago
ng g d domains/shared/directives/highlight
ng g c domains/info/pages/not-found
ng g c domains/shared/components/layout
ng g c domains/products/pages/product-detail
ng g s domains/shared/services/category

# Migrate to new syntax
ng g @angular/core:control-flow

# Run in development
ng serve

# Configure vercel for production
npm i -g vercel
vercel
# sign in, y, n, angular-store, ./, n
