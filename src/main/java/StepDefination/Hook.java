package StepDefination;

import com.gemini.generic.exception.GemException;
import com.gemini.generic.reporting.GemEcoUpload;
import com.gemini.generic.ui.utils.DriverAction;
import com.gemini.generic.ui.utils.DriverManager;
import io.cucumber.java.Before;
import com.gemini.generic.reporting.GemTestReporter.*;

import java.util.logging.Logger;

public class Hook {
    @Before
    public static void hook() throws GemException {
        DriverManager.setUpBrowser();
    }
    private final static Logger logger = Logger.getLogger(String.valueOf(GemEcoUpload.class));
}
