#include "Process.h"

void Process()
{
    //==============================================
    // Process:
    // This function gets called during the event looping.
    // This is where one sets the variables used for the category .
    //==============================================

    // Process_Common is always called regardless of the category
    Process_Common();

    // Then depending on the analysis mode, different "Process" runs

    switch (ana.looperMode)
    {
        case AnalysisConfig::k4LepMET: Process_4LepMET(); break;
    }

    // At this point, variables are all computed and set

    // Now fill all the histograms that are booked!
    ana.cutflow.fill();

    // If there are certain things people wish to do "Post" processing of the cutflows and histogramming
    // For example this is where one would write out TTree
    if (ana.write_tree)
    {
        switch (ana.looperMode)
        {
            case AnalysisConfig::k4LepMET: PostProcess_4LepMET(); break;
        }
    }

    // Reset all the variables!
    ana.tx.clear();
}
