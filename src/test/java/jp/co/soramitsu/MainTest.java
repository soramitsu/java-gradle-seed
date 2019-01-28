package jp.co.soramitsu;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class MainTest {

  @Test
  public void test1() {
    int ret = Main.testedMethod(true);
    assertEquals(ret, 1);
  }
}
