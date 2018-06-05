module JobsHelper
    def compare_url(url, repo_name)
        rs = '/compare'  + '.+'
        r = Regexp.new rs
        m = r.match url
        return m[0] if m
        rs = '/pull'  + '.+'
        r = Regexp.new rs
        m = r.match url
        return m[0] if m
        rs = '/commit'  + '.+'
        r = Regexp.new rs
        m = r.match url
        return m[0] if m
    end
end
