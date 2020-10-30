.class public Lorg/wikipedia/ActivityLifecycleHandler;
.super Ljava/lang/Object;
.source "ActivityLifecycleHandler.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private anyActivityResumed:Z

.field private haveMainActivity:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method haveMainActivity()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lorg/wikipedia/ActivityLifecycleHandler;->haveMainActivity:Z

    return v0
.end method

.method isAnyActivityResumed()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lorg/wikipedia/ActivityLifecycleHandler;->anyActivityResumed:Z

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 29
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p2

    .line 30
    instance-of p1, p1, Lorg/wikipedia/main/MainActivity;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lorg/wikipedia/ActivityLifecycleHandler;->haveMainActivity:Z

    .line 33
    :cond_0
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->shouldMatchSystemTheme()Z

    move-result p1

    if-eqz p1, :cond_5

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_5

    .line 34
    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->getCurrentTheme()Lorg/wikipedia/theme/Theme;

    move-result-object p1

    .line 35
    invoke-virtual {p2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

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

    .line 37
    :cond_1
    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->getCurrentTheme()Lorg/wikipedia/theme/Theme;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/theme/Theme;->isDark()Z

    move-result v0

    if-nez v0, :cond_5

    .line 38
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPreviousThemeId()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/wikipedia/WikipediaApp;->unmarshalTheme(I)Lorg/wikipedia/theme/Theme;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/theme/Theme;->isDark()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/wikipedia/theme/Theme;->BLACK:Lorg/wikipedia/theme/Theme;

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPreviousThemeId()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/wikipedia/WikipediaApp;->unmarshalTheme(I)Lorg/wikipedia/theme/Theme;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Lorg/wikipedia/WikipediaApp;->setCurrentTheme(Lorg/wikipedia/theme/Theme;)V

    .line 39
    invoke-virtual {p1}, Lorg/wikipedia/theme/Theme;->getMarshallingId()I

    move-result p1

    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setPreviousThemeId(I)V

    goto :goto_2

    .line 43
    :cond_3
    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->getCurrentTheme()Lorg/wikipedia/theme/Theme;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/theme/Theme;->isDark()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 44
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPreviousThemeId()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/wikipedia/WikipediaApp;->unmarshalTheme(I)Lorg/wikipedia/theme/Theme;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/theme/Theme;->isDark()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/wikipedia/theme/Theme;->LIGHT:Lorg/wikipedia/theme/Theme;

    goto :goto_1

    :cond_4
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPreviousThemeId()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/wikipedia/WikipediaApp;->unmarshalTheme(I)Lorg/wikipedia/theme/Theme;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Lorg/wikipedia/WikipediaApp;->setCurrentTheme(Lorg/wikipedia/theme/Theme;)V

    .line 45
    invoke-virtual {p1}, Lorg/wikipedia/theme/Theme;->getMarshallingId()I

    move-result p1

    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setPreviousThemeId(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 78
    instance-of p1, p1, Lorg/wikipedia/main/MainActivity;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Lorg/wikipedia/ActivityLifecycleHandler;->haveMainActivity:Z

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lorg/wikipedia/ActivityLifecycleHandler;->anyActivityResumed:Z

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lorg/wikipedia/ActivityLifecycleHandler;->anyActivityResumed:Z

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
