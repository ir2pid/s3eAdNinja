/*
java implementation of the s3eAdNinja extension.

Add android-specific functionality here.

These functions are called via JNI from native code.
*/
/*
 * NOTE: This file was originally written by the extension builder, but will not
 * be overwritten (unless --force is specified) and is intended to be modified.
 */
import com.ideaworks3d.marmalade.LoaderAPI;
import com.ideaworks3d.marmalade.LoaderActivity;

import com.google.ads.*;
import android.widget.RelativeLayout;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;

class s3eAdNinja
{
	private AdView adView;

    public int s3eAdNinjaStart(String appKey)
    {
		final String appKeyFinal = appKey;
        LoaderActivity.m_Activity.runOnUiThread(new Runnable() {
			@Override
			public void run()
			{
				adView = new AdView(LoaderActivity.m_Activity,AdSize.BANNER, appKeyFinal);					
				
				
				RelativeLayout.LayoutParams adNinjaLayoutParams = new RelativeLayout.LayoutParams(
					RelativeLayout.LayoutParams.FILL_PARENT, RelativeLayout.LayoutParams.WRAP_CONTENT);
				adNinjaLayoutParams.addRule(RelativeLayout.CENTER_HORIZONTAL);
				LoaderActivity.m_Activity.addContentView(adView, adNinjaLayoutParams);
				
				adView.loadAd(new AdRequest());
			}
		});
		return LoaderAPI.S3E_RESULT_SUCCESS;
    }

    public int s3eAdNinjaRequestFreshAd()
    {
		adView.loadAd(new AdRequest());
        return 0;
    }

    public int s3eAdNinjaShow()
    {
		// Unhide the ad.
        adView.setVisibility( View.VISIBLE );

        // Fade the ad in over 4/10 of a second.
       /* 
	    AlphaAnimation animation = new AlphaAnimation( 0.0f, 1.0f );
        animation.setDuration( 600 );
        animation.setFillAfter( true );
        animation.setInterpolator( new AccelerateInterpolator() );
        adView.startAnimation( animation );
		*/
        return 0;
    }

    public int s3eAdNinjaHide()
    {
		
		// Hide the ad.
        adView.setVisibility( View.GONE);
        adView.setVisibility( View.INVISIBLE);

        // Fade the ad in over 4/10 of a second.
       /* 
	    AlphaAnimation animation = new AlphaAnimation( 0.0f, 1.0f );
        animation.setDuration( 600 );
        animation.setFillAfter( true );
        animation.setInterpolator( new AccelerateInterpolator() );
        adView.startAnimation( animation );
		*/
        return 0;
    }

}