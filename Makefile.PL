use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'          => 'XML::Handler::Dtd2DocBook',
    'VERSION_FROM'  => 'Dtd2DocBook.pm', # finds $VERSION
    'ABSTRACT'      => 'DocBook documentation generator from a DTD',
    'PREREQ_PM'     => {
                        'XML::Parser'           => 2.31,
                        'XML::SAX'              => 0.11,
                        'XML::SAX::Base'        => 1.00,
                        'XML::SAX::Expat'       => 0.37,
                        'XML::SAX::Writer'      => 0.44,
                        'HTML::Template'        => 0,
                        'Parse::RecDescent'     => 0,
                        'XML::Handler::Dtd2Html'=> 0.40,
    },
    'PM'            => {
                        'Dtd2DocBook.pm'    => '$(INST_LIBDIR)/Dtd2DocBook.pm',
                        'en/book.tmpl'      => '$(INST_LIBDIR)/Dtd2DocBook/en/book.tmpl',
                        'en/custom.tmpl'    => '$(INST_LIBDIR)/Dtd2DocBook/en/custom.tmpl',
                        'en/element.tmpl'   => '$(INST_LIBDIR)/Dtd2DocBook/en/element.tmpl',
                        'en/example.tmpl'   => '$(INST_LIBDIR)/Dtd2DocBook/en/example.tmpl',
                        'en/entity.tmpl'    => '$(INST_LIBDIR)/Dtd2DocBook/en/entity.tmpl',
                        'en/index.tmpl'     => '$(INST_LIBDIR)/Dtd2DocBook/en/index.tmpl',
                        'en/notation.tmpl'  => '$(INST_LIBDIR)/Dtd2DocBook/en/notation.tmpl',
                        'en/prolog.tmpl'    => '$(INST_LIBDIR)/Dtd2DocBook/en/prolog.tmpl',
    },
    'EXE_FILES'     => ['dtd2db.pl'],
    'AUTHOR'        => "Francois PERRAD (francois.perrad\@gadz.org)",
    'dist'          => {
                        'COMPRESS'      => 'gzip',
                        'SUFFIX'        => '.gz',
    },
);
