#
# Produce "dropin" package root, register instances
#
{ pkgs, eclipse }:

let
  include = pkgs.lib.callPackageWith ( pkgs // context );
  context = {
      inherit eclipse; 
      dropin = eclipse.dropin;
      fetchsite = eclipse.fetchsite;
      instance = include ./instance.nix {} ;
  };
in rec {}

// include ./instance/base-equinox.nix {}

// include ./instance/build-maven.nix {}
// include ./instance/build-gradle.nix {}

// include ./instance/edit-json.nix {}
// include ./instance/edit-md.nix {}
// include ./instance/edit-proto.nix {}
// include ./instance/edit-yaml.nix {}
// include ./instance/file-explorer.nix {}
    
// include ./instance/ide-antlr.nix {}
// include ./instance/ide-birt.nix {}
// include ./instance/ide-cdt.nix {}
// include ./instance/ide-dltk.nix {}
#// include ./instance/ide-haskell.nix {}
// include ./instance/ide-groovy.nix {}
// include ./instance/ide-java.nix {}
// include ./instance/ide-pde.nix {}
// include ./instance/ide-php.nix {}
// include ./instance/ide-python.nix {}
// include ./instance/ide-scala.nix {}
// include ./instance/ide-statet.nix {}
#// include ./instance/ide-xtend.nix {}
// include ./instance/ide-xtext.nix {}
// include ./instance/ide-wtp.nix {}

// include ./instance/model-gef.nix {}
// include ./instance/model-emf.nix {}
// include ./instance/model-gmf.nix {}
// include ./instance/model-mwe.nix {}
// include ./instance/model-uml2.nix {}
// include ./instance/model-xpand.nix {}
// include ./instance/model-graphiti.nix {}
// include ./instance/model-papyrus.nix {}
// include ./instance/model-parsley.nix {}

// include ./instance/orbit-drops.nix {}

// include ./instance/perf-mat.nix {}
// include ./instance/perf-mission.nix {}
    
// include ./instance/scm-git.nix {}
// include ./instance/scm-hg.nix {}
// include ./instance/scm-svn.nix {}

// include ./instance/style-java.nix {}
// include ./instance/style-scala.nix {}
    
// include ./instance/tools-bnd.nix {}
// include ./instance/tools-linux.nix {}
// include ./instance/tools-oomph.nix {}
// include ./instance/tools-unit.nix {}
