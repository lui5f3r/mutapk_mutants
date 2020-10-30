.class public Lorg/wikipedia/theme/ThemeChooserDialog;
.super Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;
.source "ThemeChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/theme/ThemeChooserDialog$EventBusConsumer;,
        Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeButtonListener;,
        Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;,
        Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;,
        Lorg/wikipedia/theme/ThemeChooserDialog$Callback;
    }
.end annotation


# instance fields
.field private app:Lorg/wikipedia/WikipediaApp;

.field buttonDecreaseTextSize:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field buttonIncreaseTextSize:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field buttonThemeBlack:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field buttonThemeBlackHighlight:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field buttonThemeDark:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field buttonThemeDarkHighlight:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field buttonThemeLight:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field buttonThemeLightHighlight:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field buttonThemeSepia:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field buttonThemeSepiaHighlight:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field dimImagesSwitch:Landroidx/appcompat/widget/SwitchCompat;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field fontChangeProgressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private funnel:Lorg/wikipedia/analytics/AppearanceChangeFunnel;

.field matchSystemThemeSwitch:Landroidx/appcompat/widget/SwitchCompat;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field textSizePercent:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field textSizeSeekBar:Lorg/wikipedia/views/DiscreteSeekBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private unbinder:Lbutterknife/Unbinder;

.field private updatingFont:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;-><init>()V

    .line 68
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->updatingFont:Z

    return-void
.end method

.method static synthetic access$200(Lorg/wikipedia/theme/ThemeChooserDialog;)Lorg/wikipedia/WikipediaApp;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->app:Lorg/wikipedia/WikipediaApp;

    return-object p0
.end method

.method static synthetic access$302(Lorg/wikipedia/theme/ThemeChooserDialog;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->updatingFont:Z

    return p1
.end method

.method static synthetic access$400(Lorg/wikipedia/theme/ThemeChooserDialog;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->updateFontSize()V

    return-void
.end method

.method static synthetic access$500(Lorg/wikipedia/theme/ThemeChooserDialog;)Lorg/wikipedia/analytics/AppearanceChangeFunnel;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->funnel:Lorg/wikipedia/analytics/AppearanceChangeFunnel;

    return-object p0
.end method

.method static synthetic access$700(Lorg/wikipedia/theme/ThemeChooserDialog;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->updateComponents()V

    return-void
.end method

.method private conditionallyDisableThemeButtons()V
    .locals 4

    .line 193
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeLight:Landroid/widget/TextView;

    invoke-direct {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->isMatchingSystemThemeEnabled()Z

    move-result v1

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getCurrentTheme()Lorg/wikipedia/theme/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 194
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeSepia:Landroid/widget/TextView;

    invoke-direct {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->isMatchingSystemThemeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getCurrentTheme()Lorg/wikipedia/theme/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3e4ccccd    # 0.2f

    goto :goto_1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 195
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeDark:Landroid/widget/TextView;

    invoke-direct {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->isMatchingSystemThemeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getCurrentTheme()Lorg/wikipedia/theme/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x3e4ccccd    # 0.2f

    goto :goto_2

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 196
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeBlack:Landroid/widget/TextView;

    invoke-direct {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->isMatchingSystemThemeEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getCurrentTheme()Lorg/wikipedia/theme/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 198
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeLight:Landroid/widget/TextView;

    invoke-direct {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->isMatchingSystemThemeEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getCurrentTheme()Lorg/wikipedia/theme/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v1, 0x1

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 199
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeSepia:Landroid/widget/TextView;

    invoke-direct {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->isMatchingSystemThemeEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getCurrentTheme()Lorg/wikipedia/theme/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    goto :goto_7

    :cond_7
    :goto_6
    const/4 v1, 0x1

    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 200
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeDark:Landroid/widget/TextView;

    invoke-direct {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->isMatchingSystemThemeEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getCurrentTheme()Lorg/wikipedia/theme/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    goto :goto_9

    :cond_9
    :goto_8
    const/4 v1, 0x1

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 201
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeBlack:Landroid/widget/TextView;

    invoke-direct {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->isMatchingSystemThemeEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getCurrentTheme()Lorg/wikipedia/theme/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    const/4 v2, 0x1

    :cond_b
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private isMatchingSystemThemeEnabled()Z
    .locals 2

    .line 205
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->shouldMatchSystemTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateComponents()V
    .locals 0

    .line 209
    invoke-direct {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->updateFontSize()V

    .line 210
    invoke-direct {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->updateThemeButtons()V

    .line 211
    invoke-direct {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->updateDimImagesSwitch()V

    .line 212
    invoke-direct {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->updateMatchSystemThemeSwitch()V

    return-void
.end method

.method private updateDimImagesSwitch()V
    .locals 3

    .line 252
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->dimImagesSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->shouldDimDarkModeImages()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 253
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->dimImagesSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getCurrentTheme()Lorg/wikipedia/theme/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 254
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->dimImagesSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040313

    invoke-static {v1, v2}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v1

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060036

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 254
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setTextColor(I)V

    return-void
.end method

.method private updateFontSize()V
    .locals 5

    .line 227
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getTextSizeMultiplier()I

    move-result v0

    .line 228
    iget-object v1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->textSizeSeekBar:Lorg/wikipedia/views/DiscreteSeekBar;

    invoke-virtual {v1, v0}, Lorg/wikipedia/views/DiscreteSeekBar;->setValue(I)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    int-to-float v3, v0

    const v4, 0x7f0701b7

    .line 230
    invoke-static {v4}, Lorg/wikipedia/util/DimenUtil;->getFloat(I)F

    move-result v4

    mul-float v3, v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f100441

    .line 229
    invoke-virtual {p0, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 231
    iget-object v3, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->textSizePercent:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f100442

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v4

    .line 232
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 231
    :cond_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-boolean v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->updatingFont:Z

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->fontChangeProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 236
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->fontChangeProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateMatchSystemThemeSwitch()V
    .locals 2

    .line 216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->matchSystemThemeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->matchSystemThemeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->shouldMatchSystemTheme()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 219
    invoke-direct {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->conditionallyDisableThemeButtons()V

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->matchSystemThemeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateThemeButtons()V
    .locals 6

    .line 241
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeLightHighlight:Landroid/view/View;

    iget-object v1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getCurrentTheme()Lorg/wikipedia/theme/Theme;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/theme/Theme;->LIGHT:Lorg/wikipedia/theme/Theme;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeLight:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getCurrentTheme()Lorg/wikipedia/theme/Theme;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/theme/Theme;->LIGHT:Lorg/wikipedia/theme/Theme;

    const/4 v5, 0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 243
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeSepiaHighlight:Landroid/view/View;

    iget-object v1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getCurrentTheme()Lorg/wikipedia/theme/Theme;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/theme/Theme;->SEPIA:Lorg/wikipedia/theme/Theme;

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeSepia:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getCurrentTheme()Lorg/wikipedia/theme/Theme;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/theme/Theme;->SEPIA:Lorg/wikipedia/theme/Theme;

    if-eq v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 245
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeDarkHighlight:Landroid/view/View;

    iget-object v1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getCurrentTheme()Lorg/wikipedia/theme/Theme;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/theme/Theme;->DARK:Lorg/wikipedia/theme/Theme;

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    const/16 v1, 0x8

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeDark:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getCurrentTheme()Lorg/wikipedia/theme/Theme;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/theme/Theme;->DARK:Lorg/wikipedia/theme/Theme;

    if-eq v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 247
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeBlackHighlight:Landroid/view/View;

    iget-object v1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getCurrentTheme()Lorg/wikipedia/theme/Theme;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/theme/Theme;->BLACK:Lorg/wikipedia/theme/Theme;

    if-ne v1, v2, :cond_6

    const/4 v3, 0x0

    :cond_6
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeBlack:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getCurrentTheme()Lorg/wikipedia/theme/Theme;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/theme/Theme;->BLACK:Lorg/wikipedia/theme/Theme;

    if-eq v1, v2, :cond_7

    const/4 v4, 0x1

    :cond_7
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public callback()Lorg/wikipedia/theme/ThemeChooserDialog$Callback;
    .locals 1

    .line 313
    const-class v0, Lorg/wikipedia/theme/ThemeChooserDialog$Callback;

    invoke-static {p0, v0}, Lorg/wikipedia/activity/FragmentUtil;->getCallback(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/theme/ThemeChooserDialog$Callback;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 144
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 145
    invoke-virtual {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->callback()Lorg/wikipedia/theme/ThemeChooserDialog$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->callback()Lorg/wikipedia/theme/ThemeChooserDialog$Callback;

    move-result-object p1

    invoke-interface {p1}, Lorg/wikipedia/theme/ThemeChooserDialog$Callback;->onCancel()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 124
    invoke-super {p0, p1}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->app:Lorg/wikipedia/WikipediaApp;

    .line 126
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getBus()Lorg/wikipedia/concurrency/RxBus;

    move-result-object p1

    new-instance v1, Lorg/wikipedia/theme/ThemeChooserDialog$EventBusConsumer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/wikipedia/theme/ThemeChooserDialog$EventBusConsumer;-><init>(Lorg/wikipedia/theme/ThemeChooserDialog;Lorg/wikipedia/theme/ThemeChooserDialog$1;)V

    invoke-virtual {p1, v1}, Lorg/wikipedia/concurrency/RxBus;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 127
    new-instance p1, Lorg/wikipedia/analytics/AppearanceChangeFunnel;

    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/wikipedia/analytics/AppearanceChangeFunnel;-><init>(Lorg/wikipedia/WikipediaApp;Lorg/wikipedia/dataclient/WikiSite;)V

    iput-object p1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->funnel:Lorg/wikipedia/analytics/AppearanceChangeFunnel;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c0046

    .line 74
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 75
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->unbinder:Lbutterknife/Unbinder;

    .line 76
    iget-object p2, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonDecreaseTextSize:Landroid/widget/TextView;

    new-instance p3, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeButtonListener;

    sget-object v0, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;->DECREASE:Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v0, v1}, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeButtonListener;-><init>(Lorg/wikipedia/theme/ThemeChooserDialog;Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;Lorg/wikipedia/theme/ThemeChooserDialog$1;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object p2, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonIncreaseTextSize:Landroid/widget/TextView;

    new-instance p3, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeButtonListener;

    sget-object v0, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;->INCREASE:Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;

    invoke-direct {p3, p0, v0, v1}, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeButtonListener;-><init>(Lorg/wikipedia/theme/ThemeChooserDialog;Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;Lorg/wikipedia/theme/ThemeChooserDialog$1;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/view/View;

    .line 78
    iget-object p3, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonDecreaseTextSize:Landroid/widget/TextView;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    iget-object p3, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonIncreaseTextSize:Landroid/widget/TextView;

    const/4 v0, 0x1

    aput-object p3, p2, v0

    invoke-static {p2}, Lorg/wikipedia/util/FeedbackUtil;->setButtonLongPressToast([Landroid/view/View;)V

    .line 79
    iget-object p2, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeLight:Landroid/widget/TextView;

    new-instance p3, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;

    sget-object v0, Lorg/wikipedia/theme/Theme;->LIGHT:Lorg/wikipedia/theme/Theme;

    invoke-direct {p3, p0, v0, v1}, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;-><init>(Lorg/wikipedia/theme/ThemeChooserDialog;Lorg/wikipedia/theme/Theme;Lorg/wikipedia/theme/ThemeChooserDialog$1;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object p2, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeDark:Landroid/widget/TextView;

    new-instance p3, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;

    sget-object v0, Lorg/wikipedia/theme/Theme;->DARK:Lorg/wikipedia/theme/Theme;

    invoke-direct {p3, p0, v0, v1}, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;-><init>(Lorg/wikipedia/theme/ThemeChooserDialog;Lorg/wikipedia/theme/Theme;Lorg/wikipedia/theme/ThemeChooserDialog$1;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object p2, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeBlack:Landroid/widget/TextView;

    new-instance p3, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;

    sget-object v0, Lorg/wikipedia/theme/Theme;->BLACK:Lorg/wikipedia/theme/Theme;

    invoke-direct {p3, p0, v0, v1}, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;-><init>(Lorg/wikipedia/theme/ThemeChooserDialog;Lorg/wikipedia/theme/Theme;Lorg/wikipedia/theme/ThemeChooserDialog$1;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object p2, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeSepia:Landroid/widget/TextView;

    new-instance p3, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;

    sget-object v0, Lorg/wikipedia/theme/Theme;->SEPIA:Lorg/wikipedia/theme/Theme;

    invoke-direct {p3, p0, v0, v1}, Lorg/wikipedia/theme/ThemeChooserDialog$ThemeButtonListener;-><init>(Lorg/wikipedia/theme/ThemeChooserDialog;Lorg/wikipedia/theme/Theme;Lorg/wikipedia/theme/ThemeChooserDialog$1;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object p2, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->textSizeSeekBar:Lorg/wikipedia/views/DiscreteSeekBar;

    new-instance p3, Lorg/wikipedia/theme/ThemeChooserDialog$1;

    invoke-direct {p3, p0}, Lorg/wikipedia/theme/ThemeChooserDialog$1;-><init>(Lorg/wikipedia/theme/ThemeChooserDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 108
    invoke-direct {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->updateComponents()V

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Lorg/wikipedia/page/PageActivity;

    if-nez p2, :cond_0

    .line 110
    invoke-virtual {p0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;->disableBackgroundDim()V

    :cond_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 138
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 139
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 132
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 133
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 117
    invoke-super {p0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;->onStart()V

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const v1, 0x7f0701b8

    .line 119
    invoke-static {v1}, Lorg/wikipedia/util/DimenUtil;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v1

    .line 118
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    return-void
.end method

.method onToggleDimImages(Z)V
    .locals 1
    .annotation runtime Lbutterknife/OnCheckedChanged;
    .end annotation

    .line 153
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->shouldDimDarkModeImages()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setDimDarkModeImages(Z)V

    .line 157
    invoke-virtual {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->callback()Lorg/wikipedia/theme/ThemeChooserDialog$Callback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 159
    invoke-virtual {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->callback()Lorg/wikipedia/theme/ThemeChooserDialog$Callback;

    move-result-object p1

    invoke-interface {p1}, Lorg/wikipedia/theme/ThemeChooserDialog$Callback;->onToggleDimImages()V

    :cond_1
    return-void
.end method

.method onToggleMatchSystemTheme(Z)V
    .locals 3
    .annotation runtime Lbutterknife/OnCheckedChanged;
    .end annotation

    .line 165
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->shouldMatchSystemTheme()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 168
    :cond_0
    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setMatchSystemTheme(Z)V

    .line 169
    iget-object p1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->app:Lorg/wikipedia/WikipediaApp;

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getCurrentTheme()Lorg/wikipedia/theme/Theme;

    move-result-object p1

    .line 170
    invoke-direct {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->isMatchingSystemThemeEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 171
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    goto :goto_2

    .line 173
    :cond_1
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getCurrentTheme()Lorg/wikipedia/theme/Theme;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/theme/Theme;->isDark()Z

    move-result v0

    if-nez v0, :cond_5

    .line 174
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->app:Lorg/wikipedia/WikipediaApp;

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPreviousThemeId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/WikipediaApp;->unmarshalTheme(I)Lorg/wikipedia/theme/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lorg/wikipedia/theme/Theme;->BLACK:Lorg/wikipedia/theme/Theme;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->app:Lorg/wikipedia/WikipediaApp;

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPreviousThemeId()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/wikipedia/WikipediaApp;->unmarshalTheme(I)Lorg/wikipedia/theme/Theme;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/wikipedia/WikipediaApp;->setCurrentTheme(Lorg/wikipedia/theme/Theme;)V

    .line 175
    invoke-virtual {p1}, Lorg/wikipedia/theme/Theme;->getMarshallingId()I

    move-result p1

    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setPreviousThemeId(I)V

    goto :goto_2

    .line 179
    :cond_3
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getCurrentTheme()Lorg/wikipedia/theme/Theme;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/theme/Theme;->isDark()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 180
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->app:Lorg/wikipedia/WikipediaApp;

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPreviousThemeId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/WikipediaApp;->unmarshalTheme(I)Lorg/wikipedia/theme/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lorg/wikipedia/theme/Theme;->LIGHT:Lorg/wikipedia/theme/Theme;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lorg/wikipedia/theme/ThemeChooserDialog;->app:Lorg/wikipedia/WikipediaApp;

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPreviousThemeId()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/wikipedia/WikipediaApp;->unmarshalTheme(I)Lorg/wikipedia/theme/Theme;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lorg/wikipedia/WikipediaApp;->setCurrentTheme(Lorg/wikipedia/theme/Theme;)V

    .line 181
    invoke-virtual {p1}, Lorg/wikipedia/theme/Theme;->getMarshallingId()I

    move-result p1

    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setPreviousThemeId(I)V

    .line 188
    :cond_5
    :goto_2
    invoke-direct {p0}, Lorg/wikipedia/theme/ThemeChooserDialog;->conditionallyDisableThemeButtons()V

    return-void
.end method
