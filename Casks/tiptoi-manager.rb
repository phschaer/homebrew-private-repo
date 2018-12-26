cask 'tiptoi-manager' do
  version '4.0.1'
  sha256 'b739710756d8369720feabf5be29c1b5959eab7b26e60175044472e21ce70059'

  url 'https://tiptoidata.s3-de.object.vdc.interoute.com/installer_flat/tiptoi_Manager_Installer.pkg'
  name 'tiptoi® Manager'

  homepage 'https://www.ravensburger.de/entdecken/ravensburger-marken/tiptoi/tiptoi-manager/index.html'

  pkg 'tiptoi_Manager_Installer.pkg'

  uninstall pkgutil: 'com.ravensburger.tiptoi.TipToiBindings',
            delete: '/Applications/tiptoi®\ Manager.app'

  zap trash: [
              '/Applications/tiptoi®\ Manager.app',
              '~/Library/Application\ Support/com.ravensburger.tiptoimanager',
              '~/Library/Preferences/com.ravensburger.tiptoimanager.plist',
              '~/Library/Saved\ Application\ State/com.ravensburger.tiptoimanager.savedState'
             ]

end
