@RestController
@RequestMapping("/")
public class SqlInjectionController {

    @Autowired
    private SqlInjectionService sqlInjectionService;

    @GetMapping()
    public String index() {
        return "index";
    }

    @PostMapping("/execute")
    public String execute(@RequestParam("query") String query) {
        String result = sqlInjectionService.executeSqlSafely(query);
        return result;
    }
}
