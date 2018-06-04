module JobsHelper
    def compare_url(url, repo_name)
        rs = '(?<=' + repo_name + '/)' + '.+'
        r = Regexp.new rs
        m = r.match url
        m[0]
    end
end
