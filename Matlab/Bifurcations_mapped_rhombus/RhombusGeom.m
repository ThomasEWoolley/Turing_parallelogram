classdef RhombusGeom< pde
    % diskpdeo2: alternative disk pdeo, generates radially symmetric mesh
    %  pdeo=diskpdeo2(R,nr,nphi)
    % R=radius, nr,nphi=#of discret.points in r and phi,
    % based on pts2dom meshing (points2domain, for octave)
    methods(Access = public)
        function o=RhombusGeom(theta,hmax) % constructor
            
            o.grid=grid2D;

            x=[0 1 1+cos(theta) cos(theta)];
            y=[0 0 sin(theta) sin(theta)];


            % plot(x,y)

            o.grid.freeGeometry([x;y]); % use point2domain meshing
            h=1;
            while h > hmax;
                o.grid.refineMesh;
                h = h/2;
            end
            o.fem=lagrange12D;

            % o.grid.pts2dom([x;y]); % use point2domain meshing
            % o.fem=lagrange12D;
        end
    end
    methods(Access = protected) % only here since required by pde-class
        function r=df(~,~,~); r=0; end % rather use p.fuha.sG in pderesi
    end
end
