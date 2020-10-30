.class public Lorg/wikipedia/theme/ThemeChooserDialog_ViewBinding;
.super Ljava/lang/Object;
.source "ThemeChooserDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/theme/ThemeChooserDialog;

.field private view7f090403:Landroid/view/View;

.field private view7f090404:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/theme/ThemeChooserDialog;Landroid/view/View;)V
    .locals 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/wikipedia/theme/ThemeChooserDialog_ViewBinding;->target:Lorg/wikipedia/theme/ThemeChooserDialog;

    .line 30
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090088

    const-string v2, "field \'buttonDecreaseTextSize\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonDecreaseTextSize:Landroid/widget/TextView;

    .line 31
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090089

    const-string v2, "field \'buttonIncreaseTextSize\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonIncreaseTextSize:Landroid/widget/TextView;

    .line 32
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0903fb

    const-string v2, "field \'textSizePercent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/theme/ThemeChooserDialog;->textSizePercent:Landroid/widget/TextView;

    .line 33
    const-class v0, Lorg/wikipedia/views/DiscreteSeekBar;

    const v1, 0x7f0903fc

    const-string v2, "field \'textSizeSeekBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/DiscreteSeekBar;

    iput-object v0, p1, Lorg/wikipedia/theme/ThemeChooserDialog;->textSizeSeekBar:Lorg/wikipedia/views/DiscreteSeekBar;

    .line 34
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09008f

    const-string v2, "field \'buttonThemeLight\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeLight:Landroid/widget/TextView;

    .line 35
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09008d

    const-string v2, "field \'buttonThemeDark\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeDark:Landroid/widget/TextView;

    .line 36
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09008b

    const-string v2, "field \'buttonThemeBlack\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeBlack:Landroid/widget/TextView;

    .line 37
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090091

    const-string v2, "field \'buttonThemeSepia\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeSepia:Landroid/widget/TextView;

    const v0, 0x7f090090

    const-string v1, "field \'buttonThemeLightHighlight\'"

    .line 38
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeLightHighlight:Landroid/view/View;

    const v0, 0x7f09008e

    const-string v1, "field \'buttonThemeDarkHighlight\'"

    .line 39
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeDarkHighlight:Landroid/view/View;

    const v0, 0x7f09008c

    const-string v1, "field \'buttonThemeBlackHighlight\'"

    .line 40
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeBlackHighlight:Landroid/view/View;

    const v0, 0x7f090092

    const-string v1, "field \'buttonThemeSepiaHighlight\'"

    .line 41
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeSepiaHighlight:Landroid/view/View;

    const v0, 0x7f090403

    const-string v1, "field \'dimImagesSwitch\' and method \'onToggleDimImages\'"

    .line 42
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 43
    const-class v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v3, "field \'dimImagesSwitch\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p1, Lorg/wikipedia/theme/ThemeChooserDialog;->dimImagesSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 44
    iput-object v1, p0, Lorg/wikipedia/theme/ThemeChooserDialog_ViewBinding;->view7f090403:Landroid/view/View;

    .line 45
    check-cast v1, Landroid/widget/CompoundButton;

    new-instance v0, Lorg/wikipedia/theme/ThemeChooserDialog_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/theme/ThemeChooserDialog_ViewBinding$1;-><init>(Lorg/wikipedia/theme/ThemeChooserDialog_ViewBinding;Lorg/wikipedia/theme/ThemeChooserDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f090404

    const-string v1, "field \'matchSystemThemeSwitch\' and method \'onToggleMatchSystemTheme\'"

    .line 51
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 52
    const-class v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v3, "field \'matchSystemThemeSwitch\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p1, Lorg/wikipedia/theme/ThemeChooserDialog;->matchSystemThemeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 53
    iput-object v1, p0, Lorg/wikipedia/theme/ThemeChooserDialog_ViewBinding;->view7f090404:Landroid/view/View;

    .line 54
    check-cast v1, Landroid/widget/CompoundButton;

    new-instance v0, Lorg/wikipedia/theme/ThemeChooserDialog_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/theme/ThemeChooserDialog_ViewBinding$2;-><init>(Lorg/wikipedia/theme/ThemeChooserDialog_ViewBinding;Lorg/wikipedia/theme/ThemeChooserDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 60
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f09015f

    const-string v2, "field \'fontChangeProgressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p1, Lorg/wikipedia/theme/ThemeChooserDialog;->fontChangeProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 66
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog_ViewBinding;->target:Lorg/wikipedia/theme/ThemeChooserDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 68
    iput-object v1, p0, Lorg/wikipedia/theme/ThemeChooserDialog_ViewBinding;->target:Lorg/wikipedia/theme/ThemeChooserDialog;

    .line 70
    iput-object v1, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonDecreaseTextSize:Landroid/widget/TextView;

    .line 71
    iput-object v1, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonIncreaseTextSize:Landroid/widget/TextView;

    .line 72
    iput-object v1, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->textSizePercent:Landroid/widget/TextView;

    .line 73
    iput-object v1, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->textSizeSeekBar:Lorg/wikipedia/views/DiscreteSeekBar;

    .line 74
    iput-object v1, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeLight:Landroid/widget/TextView;

    .line 75
    iput-object v1, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeDark:Landroid/widget/TextView;

    .line 76
    iput-object v1, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeBlack:Landroid/widget/TextView;

    .line 77
    iput-object v1, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeSepia:Landroid/widget/TextView;

    .line 78
    iput-object v1, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeLightHighlight:Landroid/view/View;

    .line 79
    iput-object v1, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeDarkHighlight:Landroid/view/View;

    .line 80
    iput-object v1, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeBlackHighlight:Landroid/view/View;

    .line 81
    iput-object v1, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->buttonThemeSepiaHighlight:Landroid/view/View;

    .line 82
    iput-object v1, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->dimImagesSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 83
    iput-object v1, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->matchSystemThemeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 84
    iput-object v1, v0, Lorg/wikipedia/theme/ThemeChooserDialog;->fontChangeProgressBar:Landroid/widget/ProgressBar;

    .line 86
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog_ViewBinding;->view7f090403:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    iput-object v1, p0, Lorg/wikipedia/theme/ThemeChooserDialog_ViewBinding;->view7f090403:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog_ViewBinding;->view7f090404:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 89
    iput-object v1, p0, Lorg/wikipedia/theme/ThemeChooserDialog_ViewBinding;->view7f090404:Landroid/view/View;

    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
